.class public Lorg/xmlpull/mxp1/MXParserNonValidating;
.super Lorg/xmlpull/mxp1/MXParserCachingStrings;
.source "MXParserNonValidating.java"


# instance fields
.field private processDocDecl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    return v0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 6
    .param p1, "entitNameLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->allStringsInterned:Z

    if-nez v0, :cond_5

    .line 68
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    .line 70
    .local v0, "hash":I
    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .end local v0    # "hash":I
    .end local v1    # "i":I
    goto :goto_4

    .line 72
    .restart local v0    # "hash":I
    .restart local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v2, v2, v1

    array-length v2, v2

    if-ne p1, v2, :cond_4

    .line 73
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityNameBuf:[[C

    aget-object v2, v2, v1

    .line 74
    .local v2, "entityBuf":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, p1, :cond_2

    .line 78
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object v4, v4, v1

    return-object v4

    .line 76
    :cond_2
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 74
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    .end local v2    # "entityBuf":[C
    .end local v3    # "j":I
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 83
    .end local v0    # "hash":I
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParserNonValidating;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    .line 84
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityEnd:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-gez v0, :cond_6

    .line 93
    .end local v0    # "i":I
    :goto_4
    const/4 v0, 0x0

    return-object v0

    .line 87
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityRefName:Ljava/lang/String;

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityName:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_8

    .line 88
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacement:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->text:Ljava/lang/String;

    .line 89
    :cond_7
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->entityReplacementBuf:[[C

    aget-object v1, v1, v0

    return-object v1

    .line 84
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method protected more()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->more()C

    move-result v0

    return v0
.end method

.method protected parseDocdecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 104
    .local v0, "oldTokenize":Z
    :try_start_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v1, "ch":C
    const/16 v2, 0x4f

    const-string v3, "expected <!DOCTYPE"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_9

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    move v1, v2

    .line 108
    const/16 v2, 0x43

    if-ne v1, v2, :cond_8

    .line 110
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    move v1, v2

    .line 111
    const/16 v2, 0x54

    if-ne v1, v2, :cond_7

    .line 113
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    move v1, v2

    .line 114
    const/16 v2, 0x59

    if-ne v1, v2, :cond_6

    .line 116
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v2

    move v1, v2

    .line 117
    const/16 v2, 0x50

    if-ne v1, v2, :cond_5

    .line 119
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v5

    move v1, v5

    .line 120
    const/16 v5, 0x45

    if-ne v1, v5, :cond_4

    .line 122
    iget v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posStart:I

    .line 127
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result v3

    move v1, v3

    .line 128
    iget v3, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    .line 129
    .local v3, "nameStart":I
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    move-result v5

    move v1, v5

    .line 130
    iget v5, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    .line 131
    .local v5, "nameEnd":I
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v6

    move v1, v6

    .line 133
    const/16 v6, 0x53

    if-eq v1, v6, :cond_0

    if-ne v1, v2, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processExternalId(C)C

    move-result v2

    move v1, v2

    .line 135
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v2

    move v1, v2

    .line 137
    :cond_1
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    .line 138
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processInternalSubset()V

    .line 140
    :cond_2
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v2

    move v1, v2

    .line 141
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_3

    .line 145
    iget v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->posEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "ch":C
    .end local v3    # "nameStart":I
    .end local v5    # "nameEnd":I
    nop

    .line 149
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 146
    nop

    .line 149
    .end local v0    # "oldTokenize":Z
    return-void

    .line 142
    .restart local v0    # "oldTokenize":Z
    .restart local v1    # "ch":C
    .restart local v3    # "nameStart":I
    .restart local v5    # "nameEnd":I
    :cond_3
    :try_start_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "expected > to finish <[DOCTYPE but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 120
    .end local v3    # "nameStart":I
    .end local v5    # "nameEnd":I
    .restart local v0    # "oldTokenize":Z
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 117
    .restart local v0    # "oldTokenize":Z
    :cond_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 114
    .restart local v0    # "oldTokenize":Z
    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 111
    .restart local v0    # "oldTokenize":Z
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 108
    .restart local v0    # "oldTokenize":Z
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2

    .line 105
    .restart local v0    # "oldTokenize":Z
    :cond_9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v2, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "oldTokenize":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v1    # "ch":C
    .restart local v0    # "oldTokenize":Z
    :catchall_0
    move-exception v1

    .line 149
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->tokenize:Z

    .line 147
    throw v1
.end method

.method protected processAttlistDecl(C)V
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method protected processElementDecl(C)V
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result p1

    .line 252
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->readName(C)C

    .line 253
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->requireNextS()C

    move-result p1

    .line 255
    return-void
.end method

.method protected processEntityDecl(C)V
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    return-void
.end method

.method protected processExternalId(C)C
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    return p1
.end method

.method protected processInternalSubset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    :goto_0
    nop

    .line 171
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result v0

    .line 172
    .local v0, "ch":C
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 181
    .end local v0    # "ch":C
    return-void

    .line 173
    .restart local v0    # "ch":C
    :cond_0
    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processPEReference()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->skipS(C)C

    move-result v0

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processMarkupDecl(C)V

    goto :goto_0
.end method

.method protected processMarkupDecl(C)V
    .locals 4
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_8

    .line 200
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 201
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parsePI()Z

    goto :goto_0

    .line 203
    :cond_0
    const/16 v1, 0x21

    if-ne p1, v1, :cond_7

    .line 204
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 205
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->parseComment()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 210
    const/16 v1, 0x41

    if-ne p1, v1, :cond_2

    .line 211
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processAttlistDecl(C)V

    goto :goto_0

    .line 212
    :cond_2
    const/16 v1, 0x45

    const/16 v2, 0x4e

    if-ne p1, v1, :cond_5

    .line 213
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    .line 214
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_3

    .line 215
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processElementDecl(C)V

    goto :goto_0

    .line 216
    :cond_3
    if-ne p1, v2, :cond_4

    .line 217
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processEntityDecl(C)V

    goto :goto_0

    .line 219
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected ELEMENT or ENTITY after <! in DTD not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 223
    :cond_5
    if-ne p1, v2, :cond_6

    .line 224
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->processNotationDecl(C)V

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected markupdecl after <! in DTD not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected markupdecl in DTD not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    :cond_8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected < for markupdecl in DTD not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected processNotationDecl(C)V
    .locals 0
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method protected processPEReference()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method protected readName(C)C
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->isNameChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    return p1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserNonValidating;->more()C

    move-result p1

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "XML name must start with name start character not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParserNonValidating;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 36
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->eventType:I

    if-nez v0, :cond_0

    .line 39
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserNonValidating;->processDocDecl:Z

    .line 40
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "process DOCDECL feature can only be changed before parsing"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->setFeature(Ljava/lang/String;Z)V

    .line 46
    :goto_0
    return-void
.end method
