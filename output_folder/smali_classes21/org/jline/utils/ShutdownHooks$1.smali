.class Lorg/jline/utils/ShutdownHooks$1;
.super Ljava/lang/Thread;
.source "ShutdownHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/utils/ShutdownHooks;->add(Lorg/jline/utils/ShutdownHooks$Task;)Lorg/jline/utils/ShutdownHooks$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 36
    invoke-static {}, Lorg/jline/utils/ShutdownHooks;->access$000()V

    .line 37
    return-void
.end method
