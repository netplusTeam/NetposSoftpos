.class Lorg/jpos/ui/factory/HtmlFactory$Listener;
.super Ljava/lang/Object;
.source "HtmlFactory.java"

# interfaces
.implements Ljavax/swing/event/HyperlinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/ui/factory/HtmlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hyperlinkUpdate(Ljavax/swing/event/HyperlinkEvent;)V
    .locals 3
    .param p1, "e"    # Ljavax/swing/event/HyperlinkEvent;

    .line 59
    invoke-virtual {p1}, Ljavax/swing/event/HyperlinkEvent;->getEventType()Ljavax/swing/event/HyperlinkEvent$EventType;

    move-result-object v0

    sget-object v1, Ljavax/swing/event/HyperlinkEvent$EventType;->ACTIVATED:Ljavax/swing/event/HyperlinkEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 60
    invoke-virtual {p1}, Ljavax/swing/event/HyperlinkEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JEditorPane;

    .line 61
    .local v0, "pane":Ljavax/swing/JEditorPane;
    instance-of v1, p1, Ljavax/swing/text/html/HTMLFrameHyperlinkEvent;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, p1

    check-cast v1, Ljavax/swing/text/html/HTMLFrameHyperlinkEvent;

    .line 63
    .local v1, "evt":Ljavax/swing/text/html/HTMLFrameHyperlinkEvent;
    invoke-virtual {v0}, Ljavax/swing/JEditorPane;->getDocument()Ljavax/swing/text/Document;

    move-result-object v2

    check-cast v2, Ljavax/swing/text/html/HTMLDocument;

    .line 64
    .local v2, "doc":Ljavax/swing/text/html/HTMLDocument;
    invoke-virtual {v2, v1}, Ljavax/swing/text/html/HTMLDocument;->processHTMLFrameHyperlinkEvent(Ljavax/swing/text/html/HTMLFrameHyperlinkEvent;)V

    .line 65
    .end local v1    # "evt":Ljavax/swing/text/html/HTMLFrameHyperlinkEvent;
    .end local v2    # "doc":Ljavax/swing/text/html/HTMLDocument;
    goto :goto_0

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/HyperlinkEvent;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JEditorPane;->setPage(Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .end local v0    # "pane":Ljavax/swing/JEditorPane;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method
