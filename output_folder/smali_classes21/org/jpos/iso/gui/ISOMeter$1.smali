.class Lorg/jpos/iso/gui/ISOMeter$1;
.super Ljava/awt/event/MouseAdapter;
.source "ISOMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISOMeter;-><init>(Lorg/jpos/iso/gui/ISOChannelPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISOMeter;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISOMeter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISOMeter;

    .line 141
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOMeter$1;->this$0:Lorg/jpos/iso/gui/ISOMeter;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .line 143
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOMeter$1;->this$0:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v0}, Lorg/jpos/iso/gui/ISOMeter;->showLogList()V

    .line 144
    return-void
.end method
