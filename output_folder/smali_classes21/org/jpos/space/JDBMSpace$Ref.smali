.class Lorg/jpos/space/JDBMSpace$Ref;
.super Ljava/lang/Object;
.source "JDBMSpace.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/space/JDBMSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ref"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field expires:J

.field next:J

.field recid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "recid"    # J
    .param p3, "expires"    # J

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-wide p1, p0, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    .line 663
    iput-wide p3, p0, Lorg/jpos/space/JDBMSpace$Ref;->expires:J

    .line 664
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 665
    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    new-instance v0, Lorg/jpos/space/JDBMSpace$Ref;

    invoke-direct {v0}, Lorg/jpos/space/JDBMSpace$Ref;-><init>()V

    .line 693
    .local v0, "d":Lorg/jpos/space/JDBMSpace$Ref;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/jpos/space/JDBMSpace;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    .line 694
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/jpos/space/JDBMSpace;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 695
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lorg/jpos/space/JDBMSpace;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jpos/space/JDBMSpace$Ref;->expires:J

    .line 696
    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .line 668
    iget-wide v0, p0, Lorg/jpos/space/JDBMSpace$Ref;->expires:J

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

.method public serialize(Ljava/lang/Object;)[B
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/JDBMSpace$Ref;

    .line 683
    .local v0, "d":Lorg/jpos/space/JDBMSpace$Ref;
    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 684
    .local v1, "buf":[B
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/jpos/space/JDBMSpace;->putLong([BIJ)V

    .line 685
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    const/16 v4, 0x8

    invoke-static {v1, v4, v2, v3}, Lorg/jpos/space/JDBMSpace;->putLong([BIJ)V

    .line 686
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Ref;->expires:J

    const/16 v4, 0x10

    invoke-static {v1, v4, v2, v3}, Lorg/jpos/space/JDBMSpace;->putLong([BIJ)V

    .line 687
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 671
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

    .line 672
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":[recid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Lorg/jpos/space/JDBMSpace$Ref;->isExpired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    return-object v0
.end method
