.class public final Lorg/jdom2/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 226
    new-instance v0, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;-><init>(Lorg/jdom2/output/XMLOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .param p2, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 239
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 266
    if-nez p1, :cond_0

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 267
    if-nez p2, :cond_1

    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 268
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/XMLOutputter;)V
    .locals 2
    .param p1, "that"    # Lorg/jdom2/output/XMLOutputter;

    .line 288
    iget-object v0, p1, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/XMLOutputProcessor;)V

    .line 318
    return-void
.end method

.method private static final makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/jdom2/output/XMLOutputter;->clone()Lorg/jdom2/output/XMLOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/XMLOutputter;
    .locals 3

    .line 1039
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/XMLOutputter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1040
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 1007
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeAttributeEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 1019
    sget-object v0, Lorg/jdom2/output/XMLOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {v0, p1, v1}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;->escapeElementEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getXMLOutputProcessor()Lorg/jdom2/output/support/XMLOutputProcessor;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    return-object v0
.end method

.method public final output(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    .line 475
    return-void
.end method

.method public final output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 2
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 902
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 903
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V

    .line 491
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    .locals 2
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V

    .line 919
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 920
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V

    .line 524
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    .locals 2
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    .line 954
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 955
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V

    .line 412
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    .locals 2
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V

    .line 840
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 841
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V

    .line 395
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    .locals 2
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V

    .line 823
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 824
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V

    .line 429
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 860
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 861
    return-void
.end method

.method public output(Lorg/jdom2/EntityRef;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V

    .line 557
    return-void
.end method

.method public final output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    .locals 2
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V

    .line 989
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 990
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V

    .line 541
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 2
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    .line 972
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 973
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V

    .line 508
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    .locals 2
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V

    .line 937
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 938
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-static {p2, v0}, Lorg/jdom2/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Lorg/jdom2/output/Format;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V

    .line 450
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/jdom2/output/support/XMLOutputProcessor;->process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 882
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 883
    return-void
.end method

.method public final outputElementContentString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 787
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 789
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->outputElementContent(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    .line 793
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 651
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 653
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 657
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/CDATA;)Ljava/lang/String;
    .locals 2
    .param p1, "cdata"    # Lorg/jdom2/CDATA;

    .line 673
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 675
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/CDATA;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 679
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/Comment;)Ljava/lang/String;
    .locals 2
    .param p1, "comment"    # Lorg/jdom2/Comment;

    .line 717
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 719
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    goto :goto_0

    .line 720
    :catch_0
    move-exception v1

    .line 723
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/DocType;)Ljava/lang/String;
    .locals 2
    .param p1, "doctype"    # Lorg/jdom2/DocType;

    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 604
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 608
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/Document;)Ljava/lang/String;
    .locals 2
    .param p1, "doc"    # Lorg/jdom2/Document;

    .line 580
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 582
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Document;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 586
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/jdom2/Element;

    .line 624
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 626
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 630
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/EntityRef;)Ljava/lang/String;
    .locals 2
    .param p1, "entity"    # Lorg/jdom2/EntityRef;

    .line 761
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 763
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/EntityRef;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 767
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;
    .locals 2
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .line 739
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 741
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    .line 745
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final outputString(Lorg/jdom2/Text;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Lorg/jdom2/Text;

    .line 695
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 697
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Text;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v1

    .line 701
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lorg/jdom2/output/Format;

    .line 335
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 336
    return-void
.end method

.method public setXMLOutputProcessor(Lorg/jdom2/output/support/XMLOutputProcessor;)V
    .locals 0
    .param p1, "processor"    # Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 368
    iput-object p1, p0, Lorg/jdom2/output/XMLOutputter;->myProcessor:Lorg/jdom2/output/support/XMLOutputProcessor;

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "XMLOutputter[omitDeclaration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1059
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v2, "encoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v2, "omitEncoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string v2, "indent = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v2, "expandEmptyElements = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const-string v1, "lineSeparator = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-object v1, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v1, v1, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    const-string v4, "]"

    if-ge v3, v2, :cond_0

    aget-char v5, v1, v3

    .line 1075
    .local v5, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 1086
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1077
    :pswitch_1
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    goto :goto_1

    .line 1080
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    goto :goto_1

    .line 1083
    :pswitch_3
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    nop

    .line 1074
    .end local v5    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1090
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const-string/jumbo v1, "textMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/XMLOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
