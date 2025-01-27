.class public Lorg/jpos/ui/factory/LogListenerFactory$Listener;
.super Ljava/lang/Object;
.source "LogListenerFactory.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/ui/factory/LogListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# instance fields
.field cnt:I

.field final logger:Lorg/jpos/util/LogProducer;

.field maxEvents:I

.field maxLines:I

.field text:Ljavax/swing/JTextArea;

.field ui:Lorg/jpos/ui/UI;


# direct methods
.method public constructor <init>(Lorg/jpos/util/LogProducer;Lorg/jpos/ui/UI;Ljavax/swing/JTextArea;II)V
    .locals 1
    .param p1, "logger"    # Lorg/jpos/util/LogProducer;
    .param p2, "ui"    # Lorg/jpos/ui/UI;
    .param p3, "text"    # Ljavax/swing/JTextArea;
    .param p4, "maxEvents"    # I
    .param p5, "maxLines"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->ui:Lorg/jpos/ui/UI;

    .line 83
    iput-object p3, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    .line 84
    iput-object p1, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->logger:Lorg/jpos/util/LogProducer;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->cnt:I

    .line 86
    iput p4, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->maxEvents:I

    .line 87
    iput p5, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->maxLines:I

    .line 88
    invoke-virtual {p3, v0}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 5
    .param p1, "evt"    # Lorg/jpos/util/LogEvent;

    .line 108
    iget-object v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Lorg/jpos/ui/UI;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 110
    return-object p1

    .line 112
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v0, "str":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v1, "ps":Ljava/io/PrintStream;
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavax/swing/JTextArea;->insert(Ljava/lang/String;I)V

    .line 117
    iget v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->cnt:I

    iget v3, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->maxEvents:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 118
    invoke-static {p0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    return-object p1
.end method

.method public run()V
    .locals 5

    .line 91
    iget-object v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->ui:Lorg/jpos/ui/UI;

    invoke-virtual {v0}, Lorg/jpos/ui/UI;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->logger:Lorg/jpos/util/LogProducer;

    invoke-interface {v0, p0}, Lorg/jpos/util/LogProducer;->removeListener(Lorg/jpos/util/LogListener;)V

    .line 93
    iget-object v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljavax/swing/JTextArea;->getLineCount()I

    move-result v0

    .line 97
    .local v0, "lc":I
    iget v1, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->maxLines:I

    if-le v0, v1, :cond_1

    .line 99
    :try_start_0
    iget-object v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextArea;->getLineStartOffset(I)I

    move-result v1

    .line 100
    .local v1, "startOffset":I
    iget-object v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JTextArea;->getLineEndOffset(I)I

    move-result v2

    .line 101
    .local v2, "endOffset":I
    iget-object v3, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    invoke-virtual {v3}, Ljavax/swing/JTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    sub-int v4, v2, v1

    invoke-interface {v3, v1, v4}, Ljavax/swing/text/Document;->remove(II)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "startOffset":I
    .end local v2    # "endOffset":I
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Ljavax/swing/text/BadLocationException;
    iget-object v2, p0, Lorg/jpos/ui/factory/LogListenerFactory$Listener;->text:Ljavax/swing/JTextArea;

    invoke-virtual {v1}, Ljavax/swing/text/BadLocationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 106
    .end local v1    # "ex":Ljavax/swing/text/BadLocationException;
    :cond_1
    :goto_0
    return-void
.end method
