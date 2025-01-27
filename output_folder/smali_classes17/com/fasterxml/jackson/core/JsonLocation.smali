.class public Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_CONTENT_SNIPPET:I = 0x1f4

.field public static final NA:Lcom/fasterxml/jackson/core/JsonLocation;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _columnNr:I

.field protected final _lineNr:I

.field final transient _sourceRef:Ljava/lang/Object;

.field protected final _totalBytes:J

.field protected final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v8, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "totalChars"    # J
    .param p4, "lineNr"    # I
    .param p5, "colNr"    # I

    .line 58
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/Object;
    .param p2, "totalBytes"    # J
    .param p4, "totalChars"    # J
    .param p6, "lineNr"    # I
    .param p7, "columnNr"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 65
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    .line 66
    iput-wide p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    .line 67
    iput p6, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    .line 68
    iput p7, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    .line 69
    return-void
.end method

.method private _append(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "content"    # Ljava/lang/String;

    .line 218
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected _appendSourceDesc(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 173
    .local v0, "srcRef":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 174
    const-string v1, "UNKNOWN"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    return-object p1

    .line 178
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    nop

    .line 180
    .local v1, "srcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "tn":Ljava/lang/String;
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 184
    :cond_2
    instance-of v3, v0, [B

    if-eqz v3, :cond_3

    .line 185
    const-string v2, "byte[]"

    goto :goto_1

    .line 186
    :cond_3
    instance-of v3, v0, [C

    if-eqz v3, :cond_4

    .line 187
    const-string v2, "char[]"

    .line 189
    :cond_4
    :goto_1
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    const-string v3, " chars"

    .line 194
    .local v3, "charStr":Ljava/lang/String;
    instance-of v4, v0, Ljava/lang/CharSequence;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 195
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 196
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 197
    .local v7, "len":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/core/JsonLocation;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v7, v5

    .line 198
    .end local v4    # "cs":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v7    # "len":I
    :cond_5
    instance-of v4, v0, [C

    if-eqz v4, :cond_6

    .line 199
    move-object v4, v0

    check-cast v4, [C

    check-cast v4, [C

    .line 200
    .local v4, "ch":[C
    array-length v7, v4

    .line 201
    .restart local v7    # "len":I
    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v8, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v8}, Lcom/fasterxml/jackson/core/JsonLocation;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v7, v5

    .line 202
    .end local v4    # "ch":[C
    goto :goto_2

    .end local v7    # "len":I
    :cond_6
    instance-of v4, v0, [B

    if-eqz v4, :cond_7

    .line 203
    move-object v4, v0

    check-cast v4, [B

    check-cast v4, [B

    .line 204
    .local v4, "b":[B
    array-length v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 205
    .local v5, "maxLen":I
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v4, v6, v5, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v7}, Lcom/fasterxml/jackson/core/JsonLocation;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    .line 206
    array-length v6, v4

    sub-int v7, v6, v5

    .line 207
    .restart local v7    # "len":I
    const-string v3, " bytes"

    .line 208
    .end local v4    # "b":[B
    .end local v5    # "maxLen":I
    goto :goto_2

    .line 209
    .end local v7    # "len":I
    :cond_7
    const/4 v7, 0x0

    .line 211
    .restart local v7    # "len":I
    :goto_2
    if-lez v7, :cond_8

    .line 212
    const-string v4, "[truncated "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_8
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 141
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez v2, :cond_2

    return v1

    .line 142
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 144
    .local v2, "otherLoc":Lcom/fasterxml/jackson/core/JsonLocation;
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 145
    iget-object v3, v2, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-eqz v3, :cond_4

    return v1

    .line 146
    :cond_3
    iget-object v4, v2, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 148
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    iget v4, v2, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    iget v4, v2, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    if-ne v3, v4, :cond_5

    iget-wide v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    iget-wide v5, v2, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 148
    :goto_0
    return v0
.end method

.method public getByteOffset()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    return-wide v0
.end method

.method public getCharOffset()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    return-wide v0
.end method

.method public getColumnNr()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    return v0
.end method

.method public getLineNr()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    return v0
.end method

.method public getSourceRef()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 129
    .local v0, "hash":I
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 130
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 131
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 132
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 133
    return v0
.end method

.method public sourceDescription()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonLocation;->_appendSourceDesc(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonLocation;->_appendSourceDesc(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
