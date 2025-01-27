.class public Lorg/jpos/ui/factory/HtmlFactory;
.super Ljava/lang/Object;
.source "HtmlFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/ui/factory/HtmlFactory$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 3
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 46
    const-string v0, "true"

    :try_start_0
    new-instance v1, Ljavax/swing/JEditorPane;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JEditorPane;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "editorPane":Ljavax/swing/JEditorPane;
    const-string v2, "editable"

    .line 48
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljavax/swing/JEditorPane;->setEditable(Z)V

    .line 50
    const-string v2, "follow-links"

    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lorg/jpos/ui/factory/HtmlFactory$Listener;

    invoke-direct {v0}, Lorg/jpos/ui/factory/HtmlFactory$Listener;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/swing/JEditorPane;->addHyperlinkListener(Ljavax/swing/event/HyperlinkListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    return-object v1

    .line 53
    .end local v1    # "editorPane":Ljavax/swing/JEditorPane;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/swing/JLabel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
