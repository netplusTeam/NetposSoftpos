.class public Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
.super Ljava/lang/Object;
.source "PdfCanvasParser.java"


# instance fields
.field private currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

.field private tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/PdfTokenizer;)V
    .locals 0
    .param p1, "tokeniser"    # Lcom/itextpdf/io/source/PdfTokenizer;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/PdfTokenizer;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 0
    .param p1, "tokeniser"    # Lcom/itextpdf/io/source/PdfTokenizer;
    .param p2, "currentResources"    # Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 92
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 93
    return-void
.end method


# virtual methods
.method public getTokeniser()Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    return-object v0
.end method

.method public nextValidToken()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v0, v1, :cond_0

    .line 222
    goto :goto_0

    .line 223
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    :goto_0
    const/4 v0, 0x0

    .line 115
    .local v0, "ob":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_1

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->parse(Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    .line 120
    .local v1, "inlineImageAsStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    const-string v3, "EI"

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v1    # "inlineImageAsStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_2
    return-object p1
.end method

.method public readArray()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 175
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 176
    .local v1, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_0

    .line 177
    nop

    .line 182
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    return-object v0

    .line 178
    .restart local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 179
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unexpected >>."

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 181
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0
.end method

.method public readDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 154
    .local v0, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->nextValidToken()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_0

    .line 157
    nop

    .line 164
    return-object v0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v2, :cond_1

    .line 159
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Dictionary key {0} is not a name."

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 162
    .local v2, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 163
    .end local v1    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Unexpected end of file."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readObject()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->nextValidToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    .line 194
    .local v0, "type":Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser$1;->$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 210
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object v1

    .line 208
    :pswitch_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    return-object v1

    .line 205
    :pswitch_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>([B)V

    return-object v1

    .line 202
    :pswitch_2
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getDecodedStringContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 203
    .local v1, "str":Lcom/itextpdf/kernel/pdf/PdfString;
    return-object v1

    .line 200
    .end local v1    # "str":Lcom/itextpdf/kernel/pdf/PdfString;
    :pswitch_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readArray()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    return-object v1

    .line 196
    :pswitch_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 197
    .local v1, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTokeniser(Lcom/itextpdf/io/source/PdfTokenizer;)V
    .locals 0
    .param p1, "tokeniser"    # Lcom/itextpdf/io/source/PdfTokenizer;

    .line 143
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 144
    return-void
.end method
