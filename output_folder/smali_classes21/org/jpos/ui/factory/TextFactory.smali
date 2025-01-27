.class public Lorg/jpos/ui/factory/TextFactory;
.super Ljava/lang/Object;
.source "TextFactory.java"

# interfaces
.implements Lorg/jpos/ui/UIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/jpos/ui/UI;Lorg/jdom2/Element;)Ljavax/swing/JComponent;
    .locals 4
    .param p1, "ui"    # Lorg/jpos/ui/UI;
    .param p2, "e"    # Lorg/jdom2/Element;

    .line 42
    :try_start_0
    const-string v0, "type"

    const-string v1, "text/plain"

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Ljavax/swing/JEditorPane;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/swing/JEditorPane;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v1, "editorPane":Ljavax/swing/JEditorPane;
    const-string v2, "true"

    const-string v3, "editable"

    .line 46
    invoke-virtual {p2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljavax/swing/JEditorPane;->setEditable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v1

    .line 49
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "editorPane":Ljavax/swing/JEditorPane;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/swing/JLabel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
