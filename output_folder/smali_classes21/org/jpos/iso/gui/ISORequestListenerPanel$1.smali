.class Lorg/jpos/iso/gui/ISORequestListenerPanel$1;
.super Ljavax/swing/JPanel;
.source "ISORequestListenerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISORequestListenerPanel;->createPanel()Ljavax/swing/JPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53dbc95047644a09L


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISORequestListenerPanel;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISORequestListenerPanel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISORequestListenerPanel;

    .line 76
    iput-object p1, p0, Lorg/jpos/iso/gui/ISORequestListenerPanel$1;->this$0:Lorg/jpos/iso/gui/ISORequestListenerPanel;

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    return-void
.end method


# virtual methods
.method public getInsets()Ljava/awt/Insets;
    .locals 2

    .line 81
    new-instance v0, Ljava/awt/Insets;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    return-object v0
.end method
