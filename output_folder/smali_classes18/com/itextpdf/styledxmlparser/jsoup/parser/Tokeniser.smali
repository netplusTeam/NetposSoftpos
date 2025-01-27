.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field private static final notCharRefCharsSorted:[C

.field static final replacementChar:C = '\ufffd'


# instance fields
.field charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

.field private final charRefHolder:[C

.field private charsBuilder:Ljava/lang/StringBuilder;

.field private charsString:Ljava/lang/String;

.field commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

.field dataBuffer:Ljava/lang/StringBuilder;

.field doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

.field private emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

.field endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field private errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

.field private isEmitPending:Z

.field private lastStartTag:Ljava/lang/String;

.field private reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

.field private selfClosingFlagAcknowledged:Z

.field startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

.field private state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

.field tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    .line 61
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 62
    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V
    .locals 2
    .param p1, "reader"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;
    .param p2, "errors"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 75
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 76
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 77
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    .line 78
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    .line 79
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 170
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charRefHolder:[C

    .line 84
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    .line 85
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    .line 86
    return-void
.end method

.method private characterReferenceError(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "Invalid character reference: {0}"

    invoke-direct {v1, v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method acknowledgeSelfClosingFlag()V
    .locals 1

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 168
    return-void
.end method

.method advanceTransition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 1
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 162
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    .line 163
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 164
    return-void
.end method

.method appropriateEndTagName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method consumeCharacterReference(Ljava/lang/Character;Z)[C
    .locals 10
    .param p1, "additionalAllowedCharacter"    # Ljava/lang/Character;
    .param p2, "inAttribute"    # Z

    .line 172
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    return-object v1

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v2

    if-ne v0, v2, :cond_1

    .line 175
    return-object v1

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesAnySorted([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    return-object v1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charRefHolder:[C

    .line 180
    .local v0, "charRef":[C
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->mark()V

    .line 181
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "missing semicolon"

    const-string v4, ";"

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    .line 182
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const-string v6, "X"

    invoke-virtual {v2, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 183
    .local v2, "isHexMode":Z
    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeHexSequence()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeDigitSequence()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "numRef":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 185
    const-string v3, "numeric reference with no numerals"

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 187
    return-object v1

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 190
    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 191
    :cond_5
    const/4 v1, -0x1

    .line 193
    .local v1, "charval":I
    if-eqz v2, :cond_6

    const/16 v3, 0x10

    goto :goto_1

    :cond_6
    const/16 v3, 0xa

    .line 194
    .local v3, "base":I
    :goto_1
    :try_start_0
    invoke-static {v6, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 196
    .end local v3    # "base":I
    goto :goto_2

    .line 195
    :catch_0
    move-exception v3

    .line 197
    :goto_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    const v3, 0xd800

    if-lt v1, v3, :cond_7

    const v3, 0xdfff

    if-le v1, v3, :cond_a

    :cond_7
    const v3, 0x10ffff

    if-le v1, v3, :cond_8

    goto :goto_3

    .line 204
    :cond_8
    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_9

    .line 205
    int-to-char v3, v1

    aput-char v3, v0, v5

    .line 206
    return-object v0

    .line 208
    :cond_9
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    return-object v3

    .line 198
    :cond_a
    :goto_3
    const-string v3, "character outside of valid range"

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 199
    const v3, 0xfffd

    aput-char v3, v0, v5

    .line 200
    return-object v0

    .line 212
    .end local v1    # "charval":I
    .end local v2    # "isHexMode":Z
    .end local v6    # "numRef":Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeLetterThenDigitSequence()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "nameRef":Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v6

    .line 215
    .local v6, "looksLegit":Z
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->isBaseNamedEntity(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_d

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    goto :goto_4

    :cond_c
    move v7, v5

    goto :goto_5

    :cond_d
    :goto_4
    move v7, v8

    .line 217
    .local v7, "found":Z
    :goto_5
    if-nez v7, :cond_f

    .line 218
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 219
    if-eqz v6, :cond_e

    .line 220
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v4, "invalid named referenece \'\'{0}\'\'"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 221
    :cond_e
    return-object v1

    .line 223
    :cond_f
    if-eqz p2, :cond_11

    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesDigit()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/4 v9, 0x3

    new-array v9, v9, [C

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 225
    :cond_10
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 226
    return-object v1

    .line 228
    :cond_11
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 229
    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 230
    :cond_12
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->getCharacterByName(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v0, v5

    .line 231
    return-object v0

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method createCommentPending()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 247
    return-void
.end method

.method createDoctypePending()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 255
    return-void
.end method

.method createTagPending(Z)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
    .locals 2
    .param p1, "start"    # Z

    .line 236
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    .line 237
    return-object v0
.end method

.method createTempBuffer()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    .line 263
    return-void
.end method

.method currentNodeInHtmlNS()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method emit(C)V
    .locals 1
    .param p1, "c"    # C

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V
    .locals 2
    .param p1, "token"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 114
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    const-string v1, "There is an unread token pending!"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 119
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    .line 120
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 121
    .local v0, "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    iget-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 122
    iget-boolean v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->selfClosing:Z

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    goto :goto_0

    .line 124
    .end local v0    # "startTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EndTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_1

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 126
    .local v0, "endTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;
    iget-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v1, :cond_2

    .line 127
    const-string v1, "Attributes incorrectly present on end tag"

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v0    # "endTag":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;
    :cond_1
    :goto_0
    nop

    .line 129
    :cond_2
    :goto_1
    return-void
.end method

.method emit(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    return-void
.end method

.method emit([C)V
    .locals 1
    .param p1, "chars"    # [C

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method emitCommentPending()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    .line 251
    return-void
.end method

.method emitDoctypePending()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    .line 259
    return-void
.end method

.method emitTagPending()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->finaliseTag()V

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    .line 243
    return-void
.end method

.method eofError(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 5
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 281
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "Unexpectedly reached end of file (EOF) in input state [{0}]"

    invoke-direct {v1, v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    return-void
.end method

.method error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 6
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 276
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string v4, "Unexpected character \'\'{0}\'\' in input state [{}]"

    invoke-direct {v1, v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    return-void
.end method

.method getState()Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    return-object v0
.end method

.method isAppropriateEndTagToken()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    iget-object v0, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method read()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 5

    .line 89
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "Self closing flag not acknowledged"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 94
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 101
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 104
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v0

    .line 105
    .local v0, "token":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 106
    return-object v0

    .line 108
    .end local v0    # "token":Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    :cond_3
    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 109
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    return-object v0
.end method

.method transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p1, "state"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 158
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 159
    return-void
.end method

.method unescapeEntities(Z)Ljava/lang/String;
    .locals 4
    .param p1, "inAttribute"    # Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[C

    move-result-object v1

    .line 314
    .local v1, "c":[C
    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .end local v1    # "c":[C
    :goto_2
    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
