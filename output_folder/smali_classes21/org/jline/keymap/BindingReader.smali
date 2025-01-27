.class public Lorg/jline/keymap/BindingReader;
.super Ljava/lang/Object;
.source "BindingReader.java"


# instance fields
.field protected lastBinding:Ljava/lang/String;

.field protected final opBuffer:Ljava/lang/StringBuilder;

.field protected final pushBackChar:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final reader:Lorg/jline/utils/NonBlockingReader;


# direct methods
.method public constructor <init>(Lorg/jline/utils/NonBlockingReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/jline/utils/NonBlockingReader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    .line 34
    iput-object p1, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 35
    return-void
.end method


# virtual methods
.method public getCurrentBuffer()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastBinding()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->lastBinding:Ljava/lang/String;

    return-object v0
.end method

.method public peekCharacter(J)I
    .locals 2
    .param p1, "timeout"    # J

    .line 216
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 220
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0, p1, p2}, Lorg/jline/utils/NonBlockingReader;->peek(J)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readBinding(Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 57
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p2, "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;
    .locals 9
    .param p3, "block"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 65
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p2, "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/keymap/BindingReader;->lastBinding:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "o":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 68
    .local v2, "remaining":[I
    const/4 v3, 0x0

    .line 70
    .local v3, "hasRead":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 71
    iget-object v4, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v2}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;[I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    aget v5, v2, v4

    if-ltz v5, :cond_2

    .line 74
    :cond_1
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v2}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;[I)Ljava/lang/Object;

    move-result-object v1

    .line 77
    :cond_2
    if-eqz v1, :cond_5

    .line 78
    aget v5, v2, v4

    if-ltz v5, :cond_3

    .line 79
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    aget v7, v2, v4

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    aget v7, v2, v4

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p1}, Lorg/jline/keymap/KeyMap;->getAmbiguousTimeout()J

    move-result-wide v5

    .line 84
    .local v5, "ambiguousTimeout":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    invoke-virtual {p0, v5, v6}, Lorg/jline/keymap/BindingReader;->peekCharacter(J)I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    .line 85
    const/4 v1, 0x0

    .line 88
    .end local v5    # "ambiguousTimeout":J
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 89
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/keymap/BindingReader;->lastBinding:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    return-object v1

    .line 94
    :cond_5
    aget v5, v2, v4

    if-lez v5, :cond_7

    .line 95
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v5

    .line 96
    .local v5, "cp":I
    iget-object v6, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "rem":Ljava/lang/String;
    iget-object v7, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/jline/keymap/BindingReader;->lastBinding:Ljava/lang/String;

    .line 99
    const/16 v7, 0x80

    if-lt v5, v7, :cond_6

    invoke-virtual {p1}, Lorg/jline/keymap/KeyMap;->getUnicode()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/jline/keymap/KeyMap;->getNomatch()Ljava/lang/Object;

    move-result-object v7

    :goto_2
    move-object v1, v7

    .line 100
    iget-object v7, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    iget-object v4, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-eqz v1, :cond_7

    .line 103
    return-object v1

    .line 107
    .end local v5    # "cp":I
    .end local v6    # "rem":Ljava/lang/String;
    :cond_7
    if-nez p3, :cond_8

    if-eqz v3, :cond_8

    .line 108
    nop

    .line 117
    return-object v0

    .line 110
    :cond_8
    invoke-virtual {p0}, Lorg/jline/keymap/BindingReader;->readCharacter()I

    move-result v4

    .line 111
    .local v4, "c":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 112
    return-object v0

    .line 114
    :cond_9
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->opBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 115
    const/4 v3, 0x1

    .line 116
    .end local v4    # "c":I
    goto/16 :goto_0
.end method

.method public readCharacter()I
    .locals 5

    .line 153
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 157
    :cond_0
    const/4 v0, -0x2

    .line 158
    .local v0, "c":I
    const/4 v1, 0x0

    .line 159
    .local v1, "s":I
    :cond_1
    :goto_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 160
    :try_start_0
    iget-object v2, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v2

    move v0, v2

    .line 161
    if-ltz v0, :cond_1

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    move v1, v0

    .line 163
    const/4 v0, -0x2

    goto :goto_0

    .line 169
    .end local v0    # "c":I
    .end local v1    # "s":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    goto :goto_2

    .line 166
    .restart local v0    # "c":I
    .restart local v1    # "s":I
    :cond_2
    if-eqz v1, :cond_3

    int-to-char v2, v1

    int-to-char v3, v0

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_0
    .catch Lorg/jline/utils/ClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 170
    .end local v1    # "s":I
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .local v0, "e":Lorg/jline/utils/ClosedException;
    :goto_2
    new-instance v1, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v1, v0}, Lorg/jline/reader/EndOfFileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 166
    .local v0, "c":I
    .restart local v1    # "s":I
    :cond_3
    move v2, v0

    :goto_3
    return v2
.end method

.method public readCharacterBuffered()I
    .locals 9

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 178
    .local v0, "buf":[C
    iget-object v1, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v1, v0}, Lorg/jline/utils/NonBlockingReader;->readBuffered([C)I

    move-result v1

    .line 179
    .local v1, "l":I
    const/4 v2, -0x1

    if-gtz v1, :cond_0

    .line 180
    return v2

    .line 182
    :cond_0
    const/4 v3, 0x0

    .line 183
    .local v3, "s":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 184
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-char v4, v0, v4

    .line 185
    .local v4, "c":I
    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    move v3, v4

    .line 187
    if-ge v5, v1, :cond_2

    .line 188
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-char v5, v0, v5

    move v4, v5

    .line 189
    iget-object v5, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    int-to-char v7, v3

    int-to-char v8, v4

    invoke-static {v7, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move v4, v6

    goto :goto_1

    .line 194
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 195
    iget-object v6, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    move v4, v5

    .line 197
    .end local v5    # "i":I
    .local v4, "i":I
    :goto_1
    goto :goto_0

    .line 198
    .end local v4    # "i":I
    :cond_2
    if-eqz v3, :cond_4

    .line 199
    iget-object v4, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v4}, Lorg/jline/utils/NonBlockingReader;->read()I

    move-result v4

    .line 200
    .local v4, "c":I
    if-ltz v4, :cond_3

    .line 201
    iget-object v2, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    int-to-char v5, v3

    int-to-char v6, v4

    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 203
    :cond_3
    return v2

    .line 207
    .end local v0    # "buf":[C
    .end local v1    # "l":I
    .end local v3    # "s":I
    .end local v4    # "c":I
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/jline/utils/ClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Lorg/jline/utils/ClosedException;
    new-instance v1, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v1, v0}, Lorg/jline/reader/EndOfFileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readStringUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sequence"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/keymap/BindingReader$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/jline/keymap/BindingReader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->forEach(Ljava/util/function/Consumer;)V

    .line 126
    :cond_0
    const/16 v1, 0x40

    :try_start_0
    new-array v1, v1, [C

    .line 128
    .local v1, "buf":[C
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    array-length v3, v1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, "idx":I
    if-ltz v2, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "rem":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 134
    .end local v4    # "rem":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/jline/keymap/BindingReader;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v4, v1}, Lorg/jline/utils/NonBlockingReader;->readBuffered([C)I

    move-result v4

    .line 135
    .local v4, "l":I
    if-ltz v4, :cond_2

    .line 138
    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 139
    nop

    .end local v2    # "idx":I
    .end local v4    # "l":I
    goto :goto_0

    .line 136
    .restart local v2    # "idx":I
    .restart local v4    # "l":I
    :cond_2
    new-instance v3, Lorg/jline/utils/ClosedException;

    invoke-direct {v3}, Lorg/jline/utils/ClosedException;-><init>()V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "sequence":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Lorg/jline/utils/ClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "buf":[C
    .end local v2    # "idx":I
    .end local v4    # "l":I
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sequence":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Lorg/jline/utils/ClosedException;
    new-instance v2, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v2, v1}, Lorg/jline/reader/EndOfFileException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public runMacro(Ljava/lang/String;)V
    .locals 3
    .param p1, "macro"    # Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/keymap/BindingReader;->pushBackChar:Ljava/util/Deque;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/keymap/BindingReader$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/jline/keymap/BindingReader$$ExternalSyntheticLambda1;-><init>(Ljava/util/Deque;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 228
    return-void
.end method
