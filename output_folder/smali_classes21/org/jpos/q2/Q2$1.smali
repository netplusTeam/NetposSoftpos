.class Lorg/jpos/q2/Q2$1;
.super Ljava/lang/Object;
.source "Q2.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/Q2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/Q2;

.field final synthetic val$loaderName:Ljavax/management/ObjectName;


# direct methods
.method constructor <init>(Lorg/jpos/q2/Q2;Ljavax/management/ObjectName;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/Q2;

    .line 212
    iput-object p1, p0, Lorg/jpos/q2/Q2$1;->this$0:Lorg/jpos/q2/Q2;

    iput-object p2, p0, Lorg/jpos/q2/Q2$1;->val$loaderName:Ljavax/management/ObjectName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .line 214
    new-instance v0, Lorg/jpos/q2/QClassLoader;

    iget-object v1, p0, Lorg/jpos/q2/Q2$1;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v1}, Lorg/jpos/q2/Q2;->access$000(Lorg/jpos/q2/Q2;)Ljavax/management/MBeanServer;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/Q2$1;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v2}, Lorg/jpos/q2/Q2;->access$100(Lorg/jpos/q2/Q2;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/q2/Q2$1;->val$loaderName:Ljavax/management/ObjectName;

    iget-object v4, p0, Lorg/jpos/q2/Q2$1;->this$0:Lorg/jpos/q2/Q2;

    invoke-static {v4}, Lorg/jpos/q2/Q2;->access$200(Lorg/jpos/q2/Q2;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/q2/QClassLoader;-><init>(Ljavax/management/MBeanServer;Ljava/io/File;Ljavax/management/ObjectName;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
