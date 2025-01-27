.class Lorg/jpos/iso/ISOServer$1;
.super Ljava/lang/Thread;
.source "ISOServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/ISOServer;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/ISOServer;


# direct methods
.method constructor <init>(Lorg/jpos/iso/ISOServer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/ISOServer;
    .param p2, "x0"    # Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lorg/jpos/iso/ISOServer$1;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$1;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v0}, Lorg/jpos/iso/ISOServer;->access$000(Lorg/jpos/iso/ISOServer;)V

    .line 232
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$1;->this$0:Lorg/jpos/iso/ISOServer;

    iget-object v0, v0, Lorg/jpos/iso/ISOServer;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "keep-channels"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$1;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v0}, Lorg/jpos/iso/ISOServer;->access$100(Lorg/jpos/iso/ISOServer;)V

    .line 235
    :cond_0
    return-void
.end method
