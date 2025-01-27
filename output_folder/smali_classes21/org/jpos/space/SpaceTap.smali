.class public Lorg/jpos/space/SpaceTap;
.super Ljava/lang/Object;
.source "SpaceTap.java"

# interfaces
.implements Lorg/jpos/space/SpaceListener;


# instance fields
.field dsp:Lorg/jpos/space/LocalSpace;

.field key:Ljava/lang/Object;

.field ssp:Lorg/jpos/space/LocalSpace;

.field tapKey:Ljava/lang/Object;

.field tapTimeout:J


# direct methods
.method public constructor <init>(Lorg/jpos/space/LocalSpace;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "sp"    # Lorg/jpos/space/LocalSpace;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "tapKey"    # Ljava/lang/Object;
    .param p4, "tapTimeout"    # J

    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/jpos/space/SpaceTap;-><init>(Lorg/jpos/space/LocalSpace;Lorg/jpos/space/LocalSpace;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/jpos/space/LocalSpace;Lorg/jpos/space/LocalSpace;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "ssp"    # Lorg/jpos/space/LocalSpace;
    .param p2, "dsp"    # Lorg/jpos/space/LocalSpace;
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "tapKey"    # Ljava/lang/Object;
    .param p5, "tapTimeout"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jpos/space/SpaceTap;->ssp:Lorg/jpos/space/LocalSpace;

    .line 48
    iput-object p2, p0, Lorg/jpos/space/SpaceTap;->dsp:Lorg/jpos/space/LocalSpace;

    .line 49
    iput-object p3, p0, Lorg/jpos/space/SpaceTap;->key:Ljava/lang/Object;

    .line 50
    iput-object p4, p0, Lorg/jpos/space/SpaceTap;->tapKey:Ljava/lang/Object;

    .line 51
    iput-wide p5, p0, Lorg/jpos/space/SpaceTap;->tapTimeout:J

    .line 52
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Possible deadlock - key equals tap-key within same space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    :goto_0
    invoke-interface {p1, p3, p0}, Lorg/jpos/space/LocalSpace;->addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/jpos/space/SpaceTap;->ssp:Lorg/jpos/space/LocalSpace;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/jpos/space/SpaceTap;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lorg/jpos/space/LocalSpace;->removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/space/SpaceTap;->ssp:Lorg/jpos/space/LocalSpace;

    .line 65
    :cond_0
    return-void
.end method

.method public notify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/jpos/space/SpaceTap;->dsp:Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/space/SpaceTap;->tapKey:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/jpos/space/SpaceTap;->tapTimeout:J

    invoke-interface {v0, v1, p2, v2, v3}, Lorg/jpos/space/LocalSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 58
    return-void
.end method
