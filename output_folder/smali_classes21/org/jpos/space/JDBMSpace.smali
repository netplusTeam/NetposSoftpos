.class public Lorg/jpos/space/JDBMSpace;
.super Ljava/util/TimerTask;
.source "JDBMSpace.java"

# interfaces
.implements Lorg/jpos/space/Space;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/space/JDBMSpace$Ref;,
        Lorg/jpos/space/JDBMSpace$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TimerTask;",
        "Lorg/jpos/space/Space<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final GCDELAY:J = 0x493e0L

.field private static final NRD_RESOLUTION:J = 0x1f4L

.field protected static final refSerializer:Ljdbm/helper/Serializer;

.field protected static final spaceRegistrar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/space/Space;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected autoCommit:Z

.field protected htree:Ljdbm/htree/HTree;

.field protected name:Ljava/lang/String;

.field protected recman:Ljdbm/RecordManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/jpos/space/JDBMSpace$Ref;

    invoke-direct {v0}, Lorg/jpos/space/JDBMSpace$Ref;-><init>()V

    sput-object v0, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/space/JDBMSpace;->spaceRegistrar:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 62
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    const-string v0, "space"

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    .line 63
    iput-object p1, p0, Lorg/jpos/space/JDBMSpace;->name:Ljava/lang/String;

    .line 65
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 66
    .local v1, "props":Ljava/util/Properties;
    const-string v2, "jdbm.cache.size"

    const-string v3, "512"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2, v1}, Ljdbm/RecordManagerFactory;->createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    .line 68
    invoke-interface {v2, v0}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

    move-result-wide v2

    .line 69
    .local v2, "recid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 70
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-static {v0, v2, v3}, Ljdbm/htree/HTree;->load(Ljdbm/RecordManager;J)Ljdbm/htree/HTree;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-static {v4}, Ljdbm/htree/HTree;->createInstance(Ljdbm/RecordManager;)Ljdbm/htree/HTree;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    .line 73
    iget-object v5, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-virtual {v4}, Ljdbm/htree/HTree;->getRecid()J

    move-result-wide v6

    invoke-interface {v5, v0, v6, v7}, Ljdbm/RecordManager;->setNamedObject(Ljava/lang/String;J)V

    .line 75
    :goto_0
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "recid":J
    nop

    .line 79
    invoke-static {}, Lorg/jpos/util/DefaultTimer;->getTimer()Ljava/util/Timer;

    move-result-object v4

    const-wide/32 v6, 0x493e0

    const-wide/32 v8, 0x493e0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFirst(Ljava/lang/Object;Z)Lorg/jpos/space/JDBMSpace$Ref;
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "remove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, p1}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/space/JDBMSpace$Head;

    .line 532
    .local v0, "head":Lorg/jpos/space/JDBMSpace$Head;
    const/4 v1, 0x0

    .line 533
    .local v1, "ref":Lorg/jpos/space/JDBMSpace$Ref;
    if-eqz v0, :cond_3

    .line 535
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    .local v2, "recid":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 536
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v7, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v6, v2, v3, v7}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/space/JDBMSpace$Ref;

    .line 537
    .local v6, "r":Lorg/jpos/space/JDBMSpace$Ref;
    invoke-virtual {v6}, Lorg/jpos/space/JDBMSpace$Ref;->isExpired()Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_0

    .line 538
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v10, v6, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v4, v10, v11}, Ljdbm/RecordManager;->delete(J)V

    .line 539
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v4, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 540
    iget-wide v2, v6, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 541
    iget-wide v4, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    sub-long/2addr v4, v8

    iput-wide v4, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 551
    .end local v6    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    goto :goto_0

    .line 543
    .restart local v6    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    :cond_0
    move-object v1, v6

    .line 544
    if-eqz p2, :cond_1

    .line 545
    iget-object v7, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v7, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 546
    iget-wide v2, v1, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 547
    iget-wide v10, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    sub-long/2addr v10, v8

    iput-wide v10, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 552
    .end local v6    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    :cond_1
    iget-wide v6, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 553
    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 554
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v4, p1}, Ljdbm/htree/HTree;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 556
    :cond_2
    iput-wide v2, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    .line 557
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v4, p1, v0}, Ljdbm/htree/HTree;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    .end local v2    # "recid":J
    :cond_3
    :goto_1
    return-object v1
.end method

.method static getLong([BI)J
    .locals 7
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 710
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    aget-byte v4, p0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;
    .locals 20
    .param p1, "tmpl"    # Lorg/jpos/space/Template;
    .param p2, "remove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    move-object/from16 v8, p0

    const/4 v9, 0x0

    .line 583
    .local v9, "obj":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/jpos/space/Template;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 584
    .local v10, "key":Ljava/lang/Object;
    iget-object v0, v8, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, v10}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/jpos/space/JDBMSpace$Head;

    .line 585
    .local v11, "head":Lorg/jpos/space/JDBMSpace$Head;
    const/4 v0, 0x0

    .line 586
    .local v0, "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    const-wide/16 v1, 0x0

    .line 587
    .local v1, "previousRecId":J
    const/4 v3, 0x0

    .line 588
    .local v3, "unlinkCount":I
    if-eqz v11, :cond_6

    .line 589
    iget-wide v4, v11, Lorg/jpos/space/JDBMSpace$Head;->first:J

    move-object v12, v0

    move-wide v13, v1

    move v15, v3

    move-wide v6, v4

    .end local v0    # "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v1    # "previousRecId":J
    .end local v3    # "unlinkCount":I
    .local v6, "recid":J
    .local v12, "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    .local v13, "previousRecId":J
    .local v15, "unlinkCount":I
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    .line 590
    iget-object v0, v8, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v1, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v0, v6, v7, v1}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/jpos/space/JDBMSpace$Ref;

    .line 591
    .local v5, "r":Lorg/jpos/space/JDBMSpace$Ref;
    invoke-virtual {v5}, Lorg/jpos/space/JDBMSpace$Ref;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    move-object/from16 v0, p0

    move-wide v1, v6

    move-object v3, v11

    move-object v4, v5

    move-object/from16 v16, v9

    move-object v9, v5

    .end local v5    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    .local v9, "r":Lorg/jpos/space/JDBMSpace$Ref;
    .local v16, "obj":Ljava/lang/Object;
    move-object v5, v12

    move-wide/from16 v17, v6

    .end local v6    # "recid":J
    .local v17, "recid":J
    move-wide v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/jpos/space/JDBMSpace;->unlinkRef(JLorg/jpos/space/JDBMSpace$Head;Lorg/jpos/space/JDBMSpace$Ref;Lorg/jpos/space/JDBMSpace$Ref;J)V

    .line 593
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 595
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "recid":J
    .restart local v5    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    .restart local v6    # "recid":J
    .local v9, "obj":Ljava/lang/Object;
    :cond_0
    move-wide/from16 v17, v6

    move-object/from16 v16, v9

    move-object v9, v5

    .end local v5    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v6    # "recid":J
    .local v9, "r":Lorg/jpos/space/JDBMSpace$Ref;
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v17    # "recid":J
    iget-object v0, v8, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v1, v9, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v0, v1, v2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v6

    .line 596
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_2

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Lorg/jpos/space/Template;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    move-object/from16 v16, v6

    .line 598
    if-eqz p2, :cond_1

    .line 599
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v11

    move-object v4, v9

    move-object v5, v12

    move-object/from16 v19, v6

    .end local v6    # "o":Ljava/lang/Object;
    .local v19, "o":Ljava/lang/Object;
    move-wide v6, v13

    invoke-direct/range {v0 .. v7}, Lorg/jpos/space/JDBMSpace;->unlinkRef(JLorg/jpos/space/JDBMSpace$Head;Lorg/jpos/space/JDBMSpace$Ref;Lorg/jpos/space/JDBMSpace$Ref;J)V

    .line 602
    add-int/lit8 v15, v15, 0x1

    move v3, v15

    move-object/from16 v9, v16

    goto :goto_2

    .line 598
    .end local v19    # "o":Ljava/lang/Object;
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v6

    .end local v6    # "o":Ljava/lang/Object;
    .restart local v19    # "o":Ljava/lang/Object;
    move v3, v15

    move-object/from16 v9, v16

    goto :goto_2

    .line 596
    .end local v19    # "o":Ljava/lang/Object;
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v6

    .line 606
    .end local v6    # "o":Ljava/lang/Object;
    .restart local v19    # "o":Ljava/lang/Object;
    move-object v12, v9

    .line 607
    move-wide/from16 v13, v17

    .line 609
    .end local v19    # "o":Ljava/lang/Object;
    :goto_1
    iget-wide v6, v9, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 610
    .end local v9    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v17    # "recid":J
    .local v6, "recid":J
    move-object/from16 v9, v16

    goto :goto_0

    .line 589
    .end local v16    # "obj":Ljava/lang/Object;
    .local v9, "obj":Ljava/lang/Object;
    :cond_3
    move-wide/from16 v17, v6

    move-object/from16 v16, v9

    .end local v6    # "recid":J
    .end local v9    # "obj":Ljava/lang/Object;
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v17    # "recid":J
    move v3, v15

    .line 611
    .end local v15    # "unlinkCount":I
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "recid":J
    .restart local v3    # "unlinkCount":I
    .restart local v9    # "obj":Ljava/lang/Object;
    :goto_2
    if-lez v3, :cond_5

    .line 612
    iget-wide v0, v11, Lorg/jpos/space/JDBMSpace$Head;->first:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 613
    iget-object v0, v8, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, v10}, Ljdbm/htree/HTree;->remove(Ljava/lang/Object;)V

    goto :goto_3

    .line 616
    :cond_4
    iget-object v0, v8, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, v10, v11}, Ljdbm/htree/HTree;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 620
    :cond_5
    :goto_3
    move-object v0, v12

    move-wide v1, v13

    goto :goto_4

    .line 588
    .end local v12    # "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v13    # "previousRecId":J
    .restart local v0    # "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    .restart local v1    # "previousRecId":J
    :cond_6
    move-object/from16 v16, v9

    .line 620
    :goto_4
    return-object v9
.end method

.method public static getSpace()Lorg/jpos/space/JDBMSpace;
    .locals 1

    .line 85
    const-string v0, "space"

    invoke-static {v0}, Lorg/jpos/space/JDBMSpace;->getSpace(Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;

    move-result-object v0

    return-object v0
.end method

.method public static getSpace(Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 94
    invoke-static {p0, p0}, Lorg/jpos/space/JDBMSpace;->getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    const-class v0, Lorg/jpos/space/JDBMSpace;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lorg/jpos/space/JDBMSpace;->spaceRegistrar:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/space/JDBMSpace;

    .line 106
    .local v2, "sp":Lorg/jpos/space/JDBMSpace;
    if-nez v2, :cond_0

    .line 107
    new-instance v3, Lorg/jpos/space/JDBMSpace;

    invoke-direct {v3, p0, p1}, Lorg/jpos/space/JDBMSpace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 108
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit v0

    return-object v2

    .line 104
    .end local v2    # "sp":Lorg/jpos/space/JDBMSpace;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "filename":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private purge(Ljava/lang/Object;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, p1}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/space/JDBMSpace$Head;

    .line 438
    .local v0, "head":Lorg/jpos/space/JDBMSpace$Head;
    const/4 v1, 0x0

    .line 439
    .local v1, "previousRef":Lorg/jpos/space/JDBMSpace$Ref;
    if-eqz v0, :cond_4

    .line 440
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    .local v2, "recid":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 441
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v5, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v4, v2, v3, v5}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/space/JDBMSpace$Ref;

    .line 442
    .local v4, "r":Lorg/jpos/space/JDBMSpace$Ref;
    invoke-virtual {v4}, Lorg/jpos/space/JDBMSpace$Ref;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 443
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v7, v4, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v6, v7, v8}, Ljdbm/RecordManager;->delete(J)V

    .line 444
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v6, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 445
    iget-wide v6, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 446
    if-nez v1, :cond_0

    .line 447
    iget-wide v5, v4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    iput-wide v5, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    goto :goto_1

    .line 449
    :cond_0
    iget-wide v6, v4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    iput-wide v6, v1, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 450
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v7, v0, Lorg/jpos/space/JDBMSpace$Head;->last:J

    invoke-interface {v6, v7, v8, v1, v5}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    goto :goto_1

    .line 455
    :cond_1
    move-object v1, v4

    .line 456
    iput-wide v2, v0, Lorg/jpos/space/JDBMSpace$Head;->last:J

    .line 458
    :goto_1
    iget-wide v2, v4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 459
    .end local v4    # "r":Lorg/jpos/space/JDBMSpace$Ref;
    goto :goto_0

    .line 460
    .end local v2    # "recid":J
    :cond_2
    iget-wide v2, v0, Lorg/jpos/space/JDBMSpace$Head;->first:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 461
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v2, p1}, Ljdbm/htree/HTree;->remove(Ljava/lang/Object;)V

    goto :goto_2

    .line 464
    :cond_3
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v2, p1, v0}, Ljdbm/htree/HTree;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    :cond_4
    :goto_2
    return-void
.end method

.method static putLong([BIJ)V
    .locals 3
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # J

    .line 700
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 701
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 702
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 703
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 704
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 705
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 706
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 707
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 708
    return-void
.end method

.method private unlinkRef(JLorg/jpos/space/JDBMSpace$Head;Lorg/jpos/space/JDBMSpace$Ref;Lorg/jpos/space/JDBMSpace$Ref;J)V
    .locals 4
    .param p1, "recid"    # J
    .param p3, "head"    # Lorg/jpos/space/JDBMSpace$Head;
    .param p4, "r"    # Lorg/jpos/space/JDBMSpace$Ref;
    .param p5, "previousRef"    # Lorg/jpos/space/JDBMSpace$Ref;
    .param p6, "previousRecId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v1, p4, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v0, v1, v2}, Ljdbm/RecordManager;->delete(J)V

    .line 568
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2}, Ljdbm/RecordManager;->delete(J)V

    .line 569
    iget-wide v0, p3, Lorg/jpos/space/JDBMSpace$Head;->count:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p3, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 570
    if-nez p5, :cond_0

    .line 571
    iget-wide v0, p4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    iput-wide v0, p3, Lorg/jpos/space/JDBMSpace$Head;->first:J

    goto :goto_0

    .line 573
    :cond_0
    iget-wide v0, p4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    iput-wide v0, p5, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 574
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v1, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v0, p6, p7, p5, v1}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 578
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 159
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    const-class v0, Lorg/jpos/space/JDBMSpace;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lorg/jpos/space/JDBMSpace;->spaceRegistrar:Ljava/util/Map;

    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    nop

    .line 169
    :try_start_2
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 161
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public commit()V
    .locals 2

    .line 139
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public existAny([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 406
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 407
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 408
    const/4 v0, 0x1

    return v0

    .line 406
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_1
    return v1
.end method

.method public existAny([Ljava/lang/Object;J)Z
    .locals 5
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "timeout"    # J

    .line 413
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 415
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    move-wide v3, v1

    .local v3, "duration":J
    cmp-long v1, v1, p2

    if-gez v1, :cond_1

    .line 416
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->existAny([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x1

    return v1

    .line 418
    :cond_0
    monitor-enter p0

    .line 420
    sub-long v1, p2, v3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_1
    goto :goto_2

    .line 422
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 421
    :catch_0
    move-exception v1

    goto :goto_1

    .line 422
    :goto_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 424
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public gc()V
    .locals 8

    .line 483
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "GCKEY":Ljava/lang/String;
    const-wide/32 v1, 0x5265c00

    .line 487
    .local v1, "TIMEOUT":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 490
    monitor-exit p0

    return-void

    .line 491
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/32 v4, 0x5265c00

    invoke-interface {p0, v0, v3, v4, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 492
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    :try_start_2
    iget-object v3, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v3}, Ljdbm/htree/HTree;->keys()Ljdbm/helper/FastIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 496
    .local v3, "iter":Ljdbm/helper/FastIterator;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljdbm/helper/FastIterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    .local v7, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 497
    invoke-interface {p0, v0, v7, v4, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 498
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 502
    :cond_1
    goto :goto_1

    .line 500
    .end local v7    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 503
    :goto_1
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/jpos/space/JDBMSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .local v5, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 504
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 505
    :try_start_5
    invoke-direct {p0, v5}, Lorg/jpos/space/JDBMSpace;->purge(Ljava/lang/Object;)V

    .line 506
    iget-object v4, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v4}, Ljdbm/RecordManager;->commit()V

    .line 507
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 507
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "GCKEY":Ljava/lang/String;
    .end local v1    # "TIMEOUT":J
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 512
    .end local v3    # "iter":Ljdbm/helper/FastIterator;
    .restart local v0    # "GCKEY":Ljava/lang/String;
    .restart local v1    # "TIMEOUT":J
    :cond_2
    nop

    .line 513
    return-void

    .line 492
    .end local v5    # "obj":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "GCKEY":Ljava/lang/String;
    .end local v1    # "TIMEOUT":J
    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 510
    .restart local v0    # "GCKEY":Ljava/lang/String;
    .restart local v1    # "TIMEOUT":J
    :catch_1
    move-exception v3

    .line 511
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/jpos/space/SpaceError;

    invoke-direct {v4, v3}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getKeys()Ljava/lang/String;
    .locals 4

    .line 515
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v1}, Ljdbm/htree/HTree;->keys()Ljdbm/helper/FastIterator;

    move-result-object v1

    .line 519
    .local v1, "iter":Ljdbm/helper/FastIterator;
    :goto_0
    invoke-virtual {v1}, Ljdbm/helper/FastIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 521
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v1    # "iter":Ljdbm/helper/FastIterator;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    nop

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jpos/space/SpaceError;

    invoke-direct {v2, v1}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized in(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 311
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 313
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 316
    :cond_0
    monitor-exit p0

    return-object v1

    .line 310
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized in(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 325
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 327
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 328
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 331
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 334
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 324
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized inp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 293
    :try_start_0
    instance-of v0, p1, Lorg/jpos/space/Template;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 294
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/Template;

    invoke-direct {p0, v0, v1}, Lorg/jpos/space/JDBMSpace;->getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 296
    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "obj":Ljava/lang/Object;
    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/jpos/space/JDBMSpace;->getFirst(Ljava/lang/Object;Z)Lorg/jpos/space/JDBMSpace$Ref;

    move-result-object v1

    .line 298
    .local v1, "ref":Lorg/jpos/space/JDBMSpace$Ref;
    if-eqz v1, :cond_1

    .line 299
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v3, v1, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v2, v3, v4}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 300
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v3, v1, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v2, v3, v4}, Ljdbm/RecordManager;->delete(J)V

    .line 302
    :cond_1
    iget-boolean v2, p0, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v2}, Ljdbm/RecordManager;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :cond_2
    monitor-exit p0

    return-object v0

    .line 292
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "ref":Lorg/jpos/space/JDBMSpace$Ref;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 305
    .restart local p1    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 381
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 383
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 384
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 387
    const-wide/16 v3, 0x1f4

    sub-long v7, p2, v5

    :try_start_1
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 390
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 380
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nrd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 373
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 375
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    .line 372
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jpos/space/JDBMSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 178
    return-void
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 20
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 190
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    iget-object v0, v1, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0, v3}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    .line 193
    .local v4, "recid":J
    const-wide/16 v6, -0x1

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    add-long v6, v6, p3

    :goto_0
    nop

    .line 195
    .local v6, "expiration":J
    new-instance v0, Lorg/jpos/space/JDBMSpace$Ref;

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/jpos/space/JDBMSpace$Ref;-><init>(JJ)V

    .line 196
    .local v0, "dataRef":Lorg/jpos/space/JDBMSpace$Ref;
    iget-object v8, v1, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v9, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v8, v0, v9}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v10

    .line 198
    .local v10, "dataRefRecId":J
    iget-object v8, v1, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v8, v2}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jpos/space/JDBMSpace$Head;

    .line 199
    .local v8, "head":Lorg/jpos/space/JDBMSpace$Head;
    const-wide/16 v12, 0x1

    if-nez v8, :cond_1

    .line 200
    new-instance v9, Lorg/jpos/space/JDBMSpace$Head;

    invoke-direct {v9}, Lorg/jpos/space/JDBMSpace$Head;-><init>()V

    move-object v8, v9

    .line 201
    iput-wide v10, v8, Lorg/jpos/space/JDBMSpace$Head;->first:J

    .line 202
    iput-wide v10, v8, Lorg/jpos/space/JDBMSpace$Head;->last:J

    .line 203
    iput-wide v12, v8, Lorg/jpos/space/JDBMSpace$Head;->count:J

    move-wide/from16 v18, v4

    goto :goto_1

    .line 205
    :cond_1
    iget-wide v14, v8, Lorg/jpos/space/JDBMSpace$Head;->last:J

    .line 206
    .local v14, "previousLast":J
    iget-object v12, v1, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    .line 207
    invoke-interface {v12, v14, v15, v9}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jpos/space/JDBMSpace$Ref;

    .line 208
    .local v12, "lastRef":Lorg/jpos/space/JDBMSpace$Ref;
    iput-wide v10, v12, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 209
    iput-wide v10, v8, Lorg/jpos/space/JDBMSpace$Head;->last:J

    .line 210
    move-wide/from16 v18, v4

    .end local v4    # "recid":J
    .local v18, "recid":J
    iget-wide v4, v8, Lorg/jpos/space/JDBMSpace$Head;->count:J

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    iput-wide v4, v8, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 211
    iget-object v4, v1, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v4, v14, v15, v12, v9}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 213
    .end local v12    # "lastRef":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v14    # "previousLast":J
    :goto_1
    iget-object v4, v1, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v4, v2, v8}, Ljdbm/htree/HTree;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    iget-boolean v4, v1, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, v1, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v4}, Ljdbm/RecordManager;->commit()V

    .line 216
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 218
    .end local v0    # "dataRef":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v6    # "expiration":J
    .end local v8    # "head":Lorg/jpos/space/JDBMSpace$Head;
    .end local v10    # "dataRefRecId":J
    .end local v18    # "recid":J
    :cond_2
    monitor-exit p0

    .line 221
    nop

    .line 222
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "timeout":J
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/jpos/space/SpaceError;

    invoke-direct {v4, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jpos/space/JDBMSpace;->push(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 225
    return-void
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 234
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 237
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0, p2}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 239
    .local v0, "recid":J
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    add-long/2addr v2, p3

    :goto_0
    nop

    .line 241
    .local v2, "expiration":J
    new-instance v4, Lorg/jpos/space/JDBMSpace$Ref;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/jpos/space/JDBMSpace$Ref;-><init>(JJ)V

    .line 243
    .local v4, "dataRef":Lorg/jpos/space/JDBMSpace$Ref;
    iget-object v5, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v5, p1}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/space/JDBMSpace$Head;

    .line 244
    .local v5, "head":Lorg/jpos/space/JDBMSpace$Head;
    if-nez v5, :cond_1

    .line 245
    new-instance v6, Lorg/jpos/space/JDBMSpace$Head;

    invoke-direct {v6}, Lorg/jpos/space/JDBMSpace$Head;-><init>()V

    move-object v5, v6

    .line 246
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v7, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v6, v4, v7}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->last:J

    iput-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->first:J

    goto :goto_1

    .line 248
    :cond_1
    iget-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->first:J

    iput-wide v6, v4, Lorg/jpos/space/JDBMSpace$Ref;->next:J

    .line 249
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    sget-object v7, Lorg/jpos/space/JDBMSpace;->refSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v6, v4, v7}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->first:J

    .line 251
    :goto_1
    iget-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->count:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lorg/jpos/space/JDBMSpace$Head;->count:J

    .line 252
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v6, p1, v5}, Ljdbm/htree/HTree;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    iget-boolean v6, p0, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    if-eqz v6, :cond_2

    .line 254
    iget-object v6, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v6}, Ljdbm/RecordManager;->commit()V

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    .end local v0    # "recid":J
    .end local v2    # "expiration":J
    .end local v4    # "dataRef":Lorg/jpos/space/JDBMSpace$Ref;
    .end local v5    # "head":Lorg/jpos/space/JDBMSpace$Head;
    :cond_2
    monitor-exit p0

    .line 260
    nop

    .line 261
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "timeout":J
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 432
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/space/JDBMSpace;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 431
    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 427
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/space/JDBMSpace;->out(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 344
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .local v1, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 346
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 349
    :cond_0
    monitor-exit p0

    return-object v1

    .line 343
    .end local v1    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 363
    .local v0, "now":Ljava/time/Instant;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jpos/space/JDBMSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 364
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    .local v5, "duration":J
    cmp-long v1, v3, p2

    if-gez v1, :cond_0

    .line 367
    sub-long v3, p2, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 370
    .end local v5    # "duration":J
    :cond_0
    monitor-exit p0

    return-object v2

    .line 360
    .end local v0    # "now":Ljava/time/Instant;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rdp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    monitor-enter p0

    .line 270
    :try_start_0
    instance-of v0, p1, Lorg/jpos/space/Template;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/Template;

    invoke-direct {p0, v0, v1}, Lorg/jpos/space/JDBMSpace;->getObject(Lorg/jpos/space/Template;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 273
    .end local p0    # "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    .line 274
    .local v0, "obj":Ljava/lang/Object;
    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/jpos/space/JDBMSpace;->getFirst(Ljava/lang/Object;Z)Lorg/jpos/space/JDBMSpace$Ref;

    move-result-object v1

    .line 275
    .local v1, "ref":Lorg/jpos/space/JDBMSpace$Ref;
    if-eqz v1, :cond_1

    .line 276
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    iget-wide v3, v1, Lorg/jpos/space/JDBMSpace$Ref;->recid:J

    invoke-interface {v2, v3, v4}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 277
    :cond_1
    iget-boolean v2, p0, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v2}, Ljdbm/RecordManager;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_2
    monitor-exit p0

    return-object v0

    .line 269
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "ref":Lorg/jpos/space/JDBMSpace$Ref;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 280
    .restart local p1    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public rollback()V
    .locals 2

    .line 150
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->rollback()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public run()V
    .locals 1

    .line 472
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/space/JDBMSpace;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/space/SpaceError; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_1

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 477
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 132
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    iput-boolean p1, p0, Lorg/jpos/space/JDBMSpace;->autoCommit:Z

    .line 133
    return-void
.end method

.method public size(Ljava/lang/Object;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 399
    .local p0, "this":Lorg/jpos/space/JDBMSpace;, "Lorg/jpos/space/JDBMSpace<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jpos/space/JDBMSpace;->htree:Ljdbm/htree/HTree;

    invoke-virtual {v0, p1}, Ljdbm/htree/HTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/space/JDBMSpace$Head;

    .line 400
    .local v0, "head":Lorg/jpos/space/JDBMSpace$Head;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lorg/jpos/space/JDBMSpace$Head;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    .line 401
    .end local v0    # "head":Lorg/jpos/space/JDBMSpace$Head;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
