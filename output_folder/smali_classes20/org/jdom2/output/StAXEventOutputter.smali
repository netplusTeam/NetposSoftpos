.class public final Lorg/jdom2/output/StAXEventOutputter;
.super Ljava/lang/Object;
.source "StAXEventOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULTEVENTFACTORY:Ljavax/xml/stream/XMLEventFactory;

.field private static final DEFAULTPROCESSOR:Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;


# instance fields
.field private myEventFactory:Ljavax/xml/stream/XMLEventFactory;

.field private myFormat:Lorg/jdom2/output/Format;

.field private myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;-><init>(Lorg/jdom2/output/StAXEventOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/StAXEventOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;

    .line 145
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    sput-object v0, Lorg/jdom2/output/StAXEventOutputter;->DEFAULTEVENTFACTORY:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/jdom2/output/StAXEventOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXEventProcessor;Ljavax/xml/stream/XMLEventFactory;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventFactory;)V
    .locals 1
    .param p1, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/jdom2/output/StAXEventOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXEventProcessor;Ljavax/xml/stream/XMLEventFactory;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/output/StAXEventOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXEventProcessor;Ljavax/xml/stream/XMLEventFactory;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXEventProcessor;Ljavax/xml/stream/XMLEventFactory;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom2/output/Format;
    .param p2, "processor"    # Lorg/jdom2/output/support/StAXEventProcessor;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 158
    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    .line 160
    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    .line 189
    if-nez p1, :cond_0

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 190
    if-nez p2, :cond_1

    sget-object v0, Lorg/jdom2/output/StAXEventOutputter;->DEFAULTPROCESSOR:Lorg/jdom2/output/StAXEventOutputter$DefaultStAXEventProcessor;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    .line 191
    if-nez p3, :cond_2

    sget-object v0, Lorg/jdom2/output/StAXEventOutputter;->DEFAULTEVENTFACTORY:Ljavax/xml/stream/XMLEventFactory;

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/StAXEventProcessor;)V
    .locals 1
    .param p1, "processor"    # Lorg/jdom2/output/support/StAXEventProcessor;

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/jdom2/output/StAXEventOutputter;-><init>(Lorg/jdom2/output/Format;Lorg/jdom2/output/support/StAXEventProcessor;Ljavax/xml/stream/XMLEventFactory;)V

    .line 229
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

    .line 112
    invoke-virtual {p0}, Lorg/jdom2/output/StAXEventOutputter;->clone()Lorg/jdom2/output/StAXEventOutputter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/StAXEventOutputter;
    .locals 3

    .line 522
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/output/StAXEventOutputter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 523
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getStAXStream()Lorg/jdom2/output/support/StAXEventProcessor;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    return-object v0
.end method

.method public final output(Ljava/util/List;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Ljavax/xml/stream/util/XMLEventConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 414
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Ljava/util/List;)V

    .line 416
    return-void
.end method

.method public final output(Lorg/jdom2/CDATA;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    .line 433
    return-void
.end method

.method public final output(Lorg/jdom2/Comment;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    .line 468
    return-void
.end method

.method public final output(Lorg/jdom2/DocType;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    .line 354
    return-void
.end method

.method public final output(Lorg/jdom2/Document;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V

    .line 337
    return-void
.end method

.method public final output(Lorg/jdom2/Element;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    .line 374
    return-void
.end method

.method public final output(Lorg/jdom2/EntityRef;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V

    .line 503
    return-void
.end method

.method public final output(Lorg/jdom2/ProcessingInstruction;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    .line 486
    return-void
.end method

.method public final output(Lorg/jdom2/Text;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 3
    .param p1, "text"    # Lorg/jdom2/Text;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {v0, p2, v1, v2, p1}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    .line 451
    return-void
.end method

.method public final outputElementContent(Lorg/jdom2/Element;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 4
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, p2, v1, v2, v3}, Lorg/jdom2/output/support/StAXEventProcessor;->process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Ljava/util/List;)V

    .line 396
    return-void
.end method

.method public setEventFactory(Ljavax/xml/stream/XMLEventFactory;)V
    .locals 0
    .param p1, "myEventFactory"    # Ljavax/xml/stream/XMLEventFactory;

    .line 306
    iput-object p1, p0, Lorg/jdom2/output/StAXEventOutputter;->myEventFactory:Ljavax/xml/stream/XMLEventFactory;

    .line 307
    return-void
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lorg/jdom2/output/Format;

    .line 257
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    .line 258
    return-void
.end method

.method public setStAXEventProcessor(Lorg/jdom2/output/support/StAXEventProcessor;)V
    .locals 0
    .param p1, "processor"    # Lorg/jdom2/output/support/StAXEventProcessor;

    .line 290
    iput-object p1, p0, Lorg/jdom2/output/StAXEventOutputter;->myProcessor:Lorg/jdom2/output/support/StAXEventProcessor;

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "StAXStreamOutputter[omitDeclaration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v1, v1, Lorg/jdom2/output/Format;->omitDeclaration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v2, "encoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v2, "omitEncoding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->omitEncoding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v2, "indent = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v2, "expandEmptyElements = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-boolean v2, v2, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, "lineSeparator = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

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

    .line 558
    .local v5, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 569
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

    .line 560
    :pswitch_1
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    goto :goto_1

    .line 563
    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    goto :goto_1

    .line 566
    :pswitch_3
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    nop

    .line 557
    .end local v5    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v1, "textMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/output/StAXEventOutputter;->myFormat:Lorg/jdom2/output/Format;

    iget-object v2, v2, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
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
