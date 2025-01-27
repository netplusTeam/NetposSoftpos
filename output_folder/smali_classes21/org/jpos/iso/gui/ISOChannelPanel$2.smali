.class Lorg/jpos/iso/gui/ISOChannelPanel$2;
.super Ljavax/swing/JPanel;
.source "ISOChannelPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISOChannelPanel;->createCountersPanel()Ljavax/swing/JPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x104ffdeb5e2420c7L


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISOChannelPanel;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISOChannelPanel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISOChannelPanel;

    .line 153
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOChannelPanel$2;->this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    return-void
.end method


# virtual methods
.method public getInsets()Ljava/awt/Insets;
    .locals 2

    .line 158
    new-instance v0, Ljava/awt/Insets;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    return-object v0
.end method
