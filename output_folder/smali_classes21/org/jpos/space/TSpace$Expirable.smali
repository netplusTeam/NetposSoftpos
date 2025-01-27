.class Lorg/jpos/space/TSpace$Expirable;
.super Ljava/lang/Object;
.source "TSpace.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/space/TSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Expirable"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x580dd40bL


# instance fields
.field expires:J

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "expires"    # J

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Lorg/jpos/space/TSpace$Expirable;->value:Ljava/lang/Object;

    .line 528
    iput-wide p2, p0, Lorg/jpos/space/TSpace$Expirable;->expires:J

    .line 529
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 549
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/TSpace$Expirable;

    .line 550
    .local v0, "other":Lorg/jpos/space/TSpace$Expirable;
    iget-wide v1, v0, Lorg/jpos/space/TSpace$Expirable;->expires:J

    .line 551
    .local v1, "otherExpires":J
    iget-wide v3, p0, Lorg/jpos/space/TSpace$Expirable;->expires:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 552
    const/4 v3, 0x0

    return v3

    .line 553
    :cond_0
    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 554
    const/4 v3, -0x1

    return v3

    .line 556
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lorg/jpos/space/TSpace$Expirable;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jpos/space/TSpace$Expirable;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .line 532
    iget-wide v0, p0, Lorg/jpos/space/TSpace$Expirable;->expires:J

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/space/TSpace$Expirable;->value:Ljava/lang/Object;

    .line 539
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lorg/jpos/space/TSpace$Expirable;->isExpired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    return-object v0
.end method
