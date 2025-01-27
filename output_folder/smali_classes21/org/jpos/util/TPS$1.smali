.class Lorg/jpos/util/TPS$1;
.super Ljava/util/TimerTask;
.source "TPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/util/TPS;-><init>(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/util/TPS;

.field final synthetic val$period:J


# direct methods
.method constructor <init>(Lorg/jpos/util/TPS;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/util/TPS;

    .line 90
    iput-object p1, p0, Lorg/jpos/util/TPS$1;->this$0:Lorg/jpos/util/TPS;

    iput-wide p2, p0, Lorg/jpos/util/TPS$1;->val$period:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/jpos/util/TPS$1;->this$0:Lorg/jpos/util/TPS;

    iget-wide v1, p0, Lorg/jpos/util/TPS$1;->val$period:J

    invoke-static {v0, v1, v2}, Lorg/jpos/util/TPS;->access$000(Lorg/jpos/util/TPS;J)F

    .line 93
    return-void
.end method
