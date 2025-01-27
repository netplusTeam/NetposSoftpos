.class public final Lorg/jdom2/output/StAXStreamOutputter;
.super Ljava/lang/Object;
.source "StAXStreamOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;


# instance fields
.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    new-instance v0, Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;-><init>(Lorg/jdom2/output/StAXStreamOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/StAXStreamOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/jdom2/output/StAXStreamOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamProcessor;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/output/StAXStreamOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamProcessor;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamProcessor;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .param p2, "processor"    # Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 150
    iput-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 177
    if-nez p1, :cond_0

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 178
    if-nez p2, :cond_1

    sget-object v0, Lorg/jdom2/output/StAXStreamOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXStreamOutputter$DefaultStAXStreamProcessor;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/StAXStreamProcessor;)V
    .locals 1
    .param p1, "processor"    # Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jdom2/output/StAXStreamOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXStreamProcessor;)V

    .line 216
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/jdom2/output/StAXStreamOutputter;->clone()Lorg/jdom2/output/StAXStreamOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/StAXStreamOutputter;
    .locals 3

    .line 482
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/StAXStreamOutputter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 483
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getStAXStream()Lorg/jdom2/output/support/StAXStreamProcessor;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    return-object v0
.end method

.method public final output(Ljava/util/List;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljavax/xml/stream/XMLStreamWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 374
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 375
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 376
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V

    .line 392
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 393
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    .line 427
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 428
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V

    .line 313
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 314
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V

    .line 296
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 297
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 333
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 334
    return-void
.end method

.method public final output(Lorg/jdom2/EntityRef;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V

    .line 462
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 463
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    .line 445
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 446
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-interface {v0, p2, v1, p1}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V

    .line 410
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 411
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/jdom2/output/support/StAXStreamProcessor;->process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 355
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 356
    return-void
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lorg/jdom2/output/Format;

    .line 233
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 234
    return-void
.end method

.method public setStAXStreamProcessor(Lorg/jdom2/output/support/StAXStreamProcessor;)V
    .locals 0
    .param p1, "processor"    # Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 266
    iput-object p1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myProcessor:Lorg/jdom2/output/support/StAXStreamProcessor;

    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "StAXStreamOutputter[omitDeclaration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, "encoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v2, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v2, "omitEncoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v2, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, "indent = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v2, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, "expandEmptyElements = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v2, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, "lineSeparator = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

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

    .line 518
    .local v5, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 529
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

    .line 520
    :pswitch_1
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    goto :goto_1

    .line 523
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    goto :goto_1

    .line 526
    :pswitch_3
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    nop

    .line 517
    .end local v5    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v1, "textMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/StAXStreamOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
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
