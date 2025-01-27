.class public Lorg/jpos/ui/factory/JLabelFactory;
.super Ljava/lang/Object;
.source "JLabelFactory.java"

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

    .line 41
    new-instance v0, Ljavax/swing/JLabel;

    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "label":Ljavax/swing/JLabel;
    const-string v1, "font"

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "font":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 44
    invoke-static {v1}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JLabel;->setFont(Ljava/awt/Font;)V

    .line 45
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 46
    new-instance v2, Ljavax/swing/border/EmptyBorder;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v3, v3, v3}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-virtual {v0, v2}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    .line 47
    return-object v0
.end method
