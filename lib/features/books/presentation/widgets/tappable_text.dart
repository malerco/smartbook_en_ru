import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TappableText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final Function(String word) onWordTap;
  final Function(String text) onTextSelected;
  final bool enableSelection;
  final Set<String> dictionaryWords;
  final Color? dictionaryWordColor;

  const TappableText({
    super.key,
    required this.text,
    required this.style,
    required this.onWordTap,
    required this.onTextSelected,
    this.enableSelection = true,
    this.dictionaryWords = const {},
    this.dictionaryWordColor,
  });

  @override
  State<TappableText> createState() => _TappableTextState();
}

class _TappableTextState extends State<TappableText> {
  bool _isSelectionMode = false;
  String? _selectedText;
  
  List<TapGestureRecognizer>? _recognizers;
  TextSpan? _cachedTextSpan;
  String? _cachedText;
  TextStyle? _cachedStyle;
  Set<String>? _cachedDictionaryWords;
  Color? _cachedDictionaryColor;

  @override
  void dispose() {
    _disposeRecognizers();
    super.dispose();
  }

  void _disposeRecognizers() {
    if (_recognizers != null) {
      for (final r in _recognizers!) {
        r.dispose();
      }
      _recognizers = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isSelectionMode && widget.enableSelection) {
      return SelectableText(
        widget.text,
        style: widget.style,
        onSelectionChanged: (selection, cause) {
          if (selection.baseOffset != selection.extentOffset) {
            final start = selection.baseOffset < selection.extentOffset
                ? selection.baseOffset
                : selection.extentOffset;
            final end = selection.baseOffset > selection.extentOffset
                ? selection.baseOffset
                : selection.extentOffset;
            
            if (start >= 0 && end <= widget.text.length) {
              _selectedText = widget.text.substring(start, end).trim();
            }
          }
        },
        contextMenuBuilder: (context, editableTextState) {
          return AdaptiveTextSelectionToolbar.buttonItems(
            anchors: editableTextState.contextMenuAnchors,
            buttonItems: [
              ContextMenuButtonItem(
                label: 'Translate',
                onPressed: () {
                  if (_selectedText != null && _selectedText!.isNotEmpty) {
                    widget.onTextSelected(_selectedText!);
                    ContextMenuController.removeAny();
                  }
                },
              ),
              ...editableTextState.contextMenuButtonItems,
            ],
          );
        },
      );
    }

    return GestureDetector(
      onLongPress: () {
        // setState(() {
        //   _isSelectionMode = true;
        // });
      },
      child: RepaintBoundary(
        child: RichText(
          text: _getTextSpan(),
        ),
      ),
    );
  }

  TextSpan _getTextSpan() {
    if (_cachedTextSpan != null && 
        _cachedText == widget.text && 
        _cachedStyle == widget.style &&
        _cachedDictionaryWords == widget.dictionaryWords &&
        _cachedDictionaryColor == widget.dictionaryWordColor) {
      return _cachedTextSpan!;
    }
    
    _disposeRecognizers();
    _recognizers = [];
    
    final spans = <InlineSpan>[];
    final regex = RegExp(r'(\S+)(\s*)');
    final matches = regex.allMatches(widget.text);

    for (final match in matches) {
      final word = match.group(1) ?? '';
      final whitespace = match.group(2) ?? '';
      final cleanWord = _cleanWord(word);
      final isInDictionary = widget.dictionaryWords.contains(cleanWord.toLowerCase());

      final recognizer = TapGestureRecognizer()
        ..onTap = () {
          if (cleanWord.isNotEmpty) {
            widget.onWordTap(cleanWord);
          }
        };
      _recognizers!.add(recognizer);

      spans.add(TextSpan(
        text: word,
        style: widget.style.copyWith(
          color: isInDictionary ? widget.dictionaryWordColor : null,
          decoration: isInDictionary ? TextDecoration.underline : null,
          decorationColor: isInDictionary ? widget.dictionaryWordColor : null,
        ),
        recognizer: recognizer,
      ));

      if (whitespace.isNotEmpty) {
        spans.add(TextSpan(
          text: whitespace,
          style: widget.style,
        ));
      }
    }

    _cachedText = widget.text;
    _cachedStyle = widget.style;
    _cachedDictionaryWords = widget.dictionaryWords;
    _cachedDictionaryColor = widget.dictionaryWordColor;
    _cachedTextSpan = TextSpan(children: spans);
    
    return _cachedTextSpan!;
  }

  String _cleanWord(String word) {
    return word.replaceAll(RegExp(r'^[^\w\u0400-\u04FF]+|[^\w\u0400-\u04FF]+$'), '');
  }
}
