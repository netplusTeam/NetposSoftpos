.class Lorg/jpos/q2/iso/MUXPool$1;
.super Ljava/lang/Thread;
.source "MUXPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/iso/MUXPool;->request(Lorg/jpos/iso/ISOMsg;JLorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/iso/MUXPool;

.field final synthetic val$handBack:Ljava/lang/Object;

.field final synthetic val$r:Lorg/jpos/iso/ISOResponseListener;


# direct methods
.method constructor <init>(Lorg/jpos/q2/iso/MUXPool;Lorg/jpos/iso/ISOResponseListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/MUXPool;

    .line 140
    iput-object p1, p0, Lorg/jpos/q2/iso/MUXPool$1;->this$0:Lorg/jpos/q2/iso/MUXPool;

    iput-object p2, p0, Lorg/jpos/q2/iso/MUXPool$1;->val$r:Lorg/jpos/iso/ISOResponseListener;

    iput-object p3, p0, Lorg/jpos/q2/iso/MUXPool$1;->val$handBack:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/jpos/q2/iso/MUXPool$1;->val$r:Lorg/jpos/iso/ISOResponseListener;

    iget-object v1, p0, Lorg/jpos/q2/iso/MUXPool$1;->val$handBack:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/jpos/iso/ISOResponseListener;->expired(Ljava/lang/Object;)V

    .line 143
    return-void
.end method
