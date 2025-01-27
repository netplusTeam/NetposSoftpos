.class Lorg/jpos/iso/gui/ISOChannelPanel$1;
.super Ljava/lang/Object;
.source "ISOChannelPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/gui/ISOChannelPanel;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

.field final synthetic val$server:Lorg/jpos/iso/ISOServer;


# direct methods
.method constructor <init>(Lorg/jpos/iso/gui/ISOChannelPanel;Lorg/jpos/iso/ISOServer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/gui/ISOChannelPanel;

    .line 126
    iput-object p1, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

    iput-object p2, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->val$server:Lorg/jpos/iso/ISOServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 129
    iget-object v0, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->val$server:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer;->getActiveConnections()I

    move-result v0

    .line 130
    .local v0, "active":I
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

    iget-object v1, v1, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/jpos/iso/gui/ISOMeter;->setConnected(Z)V

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

    iget-object v1, v1, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lorg/jpos/iso/gui/ISOMeter;->setPositiveCounter(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 136
    iget-object v1, p0, Lorg/jpos/iso/gui/ISOChannelPanel$1;->this$0:Lorg/jpos/iso/gui/ISOChannelPanel;

    iget-object v1, v1, Lorg/jpos/iso/gui/ISOChannelPanel;->meter:Lorg/jpos/iso/gui/ISOMeter;

    invoke-virtual {v1}, Lorg/jpos/iso/gui/ISOMeter;->repaint()V

    .line 137
    return-void
.end method
