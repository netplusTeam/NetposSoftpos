.class public Lorg/jpos/space/JESpace$GCRef;
.super Ljava/lang/Object;
.source "JESpace.java"


# annotations
.annotation runtime Lcom/sleepycat/persist/model/Entity;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/space/JESpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCRef"
.end annotation


# instance fields
.field private expires:J
    .annotation runtime Lcom/sleepycat/persist/model/SecondaryKey;
        relate = .enum Lcom/sleepycat/persist/model/Relationship;->MANY_TO_ONE:Lcom/sleepycat/persist/model/Relationship;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/sleepycat/persist/model/PrimaryKey;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "expires"    # J

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-wide p1, p0, Lorg/jpos/space/JESpace$GCRef;->id:J

    .line 622
    iput-wide p3, p0, Lorg/jpos/space/JESpace$GCRef;->expires:J

    .line 623
    return-void
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 631
    iget-wide v0, p0, Lorg/jpos/space/JESpace$GCRef;->expires:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 625
    iget-wide v0, p0, Lorg/jpos/space/JESpace$GCRef;->id:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 4

    .line 628
    iget-wide v0, p0, Lorg/jpos/space/JESpace$GCRef;->expires:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
