.class public final Lorg/osgi/framework/BundlePermission;
.super Ljava/security/BasicPermission;
.source "BundlePermission.java"


# static fields
.field private static final ACTION_ALL:I = 0xf

.field private static final ACTION_FRAGMENT:I = 0x8

.field private static final ACTION_HOST:I = 0x4

.field static final ACTION_NONE:I = 0x0

.field private static final ACTION_PROVIDE:I = 0x1

.field private static final ACTION_REQUIRE:I = 0x2

.field public static final FRAGMENT:Ljava/lang/String; = "fragment"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final PROVIDE:Ljava/lang/String; = "provide"

.field public static final REQUIRE:Ljava/lang/String; = "require"

.field private static final serialVersionUID:J = 0x2d36323932333434L


# instance fields
.field private transient action_mask:I

.field private volatile actions:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "symbolicName"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 135
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/BundlePermission;->actions:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p2}, Lorg/osgi/framework/BundlePermission;->setTransients(I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "symbolicName"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 125
    invoke-static {p2}, Lorg/osgi/framework/BundlePermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/BundlePermission;-><init>(Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 16
    .param p0, "actions"    # Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 172
    .local v1, "seencomma":Z
    const/4 v2, 0x0

    .line 174
    .local v2, "mask":I
    if-nez v0, :cond_0

    .line 175
    return v2

    .line 178
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 180
    .local v3, "a":[C
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 181
    .local v4, "i":I
    if-gez v4, :cond_1

    .line 182
    return v2

    .line 184
    :cond_1
    :goto_0
    const-string v5, "invalid permission: "

    const/4 v6, -0x1

    if-eq v4, v6, :cond_23

    .line 188
    :goto_1
    if-eq v4, v6, :cond_3

    aget-char v7, v3, v4

    move v8, v7

    .local v8, "c":C
    const/16 v9, 0x20

    if-eq v7, v9, :cond_2

    const/16 v7, 0xd

    if-eq v8, v7, :cond_2

    const/16 v7, 0xa

    if-eq v8, v7, :cond_2

    const/16 v7, 0xc

    if-eq v8, v7, :cond_2

    const/16 v7, 0x9

    if-ne v8, v7, :cond_3

    .line 189
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 194
    .end local v8    # "c":C
    :cond_3
    const/16 v6, 0x49

    const/16 v7, 0x69

    const/16 v8, 0x4f

    const/16 v9, 0x6f

    const/16 v10, 0x45

    const/16 v11, 0x52

    const/16 v12, 0x65

    const/16 v13, 0x72

    const/4 v14, 0x6

    if-lt v4, v14, :cond_b

    add-int/lit8 v15, v4, -0x6

    aget-char v15, v3, v15

    const/16 v14, 0x70

    if-eq v15, v14, :cond_4

    add-int/lit8 v14, v4, -0x6

    aget-char v14, v3, v14

    const/16 v15, 0x50

    if-ne v14, v15, :cond_b

    :cond_4
    add-int/lit8 v14, v4, -0x5

    aget-char v14, v3, v14

    if-eq v14, v13, :cond_5

    add-int/lit8 v14, v4, -0x5

    aget-char v14, v3, v14

    if-ne v14, v11, :cond_b

    :cond_5
    add-int/lit8 v14, v4, -0x4

    aget-char v14, v3, v14

    if-eq v14, v9, :cond_6

    add-int/lit8 v14, v4, -0x4

    aget-char v14, v3, v14

    if-ne v14, v8, :cond_b

    :cond_6
    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x76

    if-eq v14, v15, :cond_7

    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x56

    if-ne v14, v15, :cond_b

    :cond_7
    add-int/lit8 v14, v4, -0x2

    aget-char v14, v3, v14

    if-eq v14, v7, :cond_8

    add-int/lit8 v14, v4, -0x2

    aget-char v14, v3, v14

    if-ne v14, v6, :cond_b

    :cond_8
    add-int/lit8 v14, v4, -0x1

    aget-char v14, v3, v14

    const/16 v15, 0x64

    if-eq v14, v15, :cond_9

    add-int/lit8 v14, v4, -0x1

    aget-char v14, v3, v14

    const/16 v15, 0x44

    if-ne v14, v15, :cond_b

    :cond_9
    aget-char v14, v3, v4

    if-eq v14, v12, :cond_a

    aget-char v14, v3, v4

    if-ne v14, v10, :cond_b

    .line 201
    :cond_a
    const/4 v6, 0x7

    .line 202
    .local v6, "matchlen":I
    or-int/lit8 v2, v2, 0x3

    goto/16 :goto_2

    .line 204
    .end local v6    # "matchlen":I
    :cond_b
    const/4 v14, 0x6

    if-lt v4, v14, :cond_13

    add-int/lit8 v14, v4, -0x6

    aget-char v14, v3, v14

    if-eq v14, v13, :cond_c

    add-int/lit8 v14, v4, -0x6

    aget-char v14, v3, v14

    if-ne v14, v11, :cond_13

    :cond_c
    add-int/lit8 v14, v4, -0x5

    aget-char v14, v3, v14

    if-eq v14, v12, :cond_d

    add-int/lit8 v14, v4, -0x5

    aget-char v14, v3, v14

    if-ne v14, v10, :cond_13

    :cond_d
    add-int/lit8 v14, v4, -0x4

    aget-char v14, v3, v14

    const/16 v15, 0x71

    if-eq v14, v15, :cond_e

    add-int/lit8 v14, v4, -0x4

    aget-char v14, v3, v14

    const/16 v15, 0x51

    if-ne v14, v15, :cond_13

    :cond_e
    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x75

    if-eq v14, v15, :cond_f

    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x55

    if-ne v14, v15, :cond_13

    :cond_f
    add-int/lit8 v14, v4, -0x2

    aget-char v14, v3, v14

    if-eq v14, v7, :cond_10

    add-int/lit8 v7, v4, -0x2

    aget-char v7, v3, v7

    if-ne v7, v6, :cond_13

    :cond_10
    add-int/lit8 v6, v4, -0x1

    aget-char v6, v3, v6

    if-eq v6, v13, :cond_11

    add-int/lit8 v6, v4, -0x1

    aget-char v6, v3, v6

    if-ne v6, v11, :cond_13

    :cond_11
    aget-char v6, v3, v4

    if-eq v6, v12, :cond_12

    aget-char v6, v3, v4

    if-ne v6, v10, :cond_13

    .line 211
    :cond_12
    const/4 v6, 0x7

    .line 212
    .restart local v6    # "matchlen":I
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 214
    .end local v6    # "matchlen":I
    :cond_13
    const/16 v6, 0x54

    const/16 v7, 0x74

    const/4 v14, 0x3

    if-lt v4, v14, :cond_18

    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x68

    if-eq v14, v15, :cond_14

    add-int/lit8 v14, v4, -0x3

    aget-char v14, v3, v14

    const/16 v15, 0x48

    if-ne v14, v15, :cond_18

    :cond_14
    add-int/lit8 v14, v4, -0x2

    aget-char v14, v3, v14

    if-eq v14, v9, :cond_15

    add-int/lit8 v9, v4, -0x2

    aget-char v9, v3, v9

    if-ne v9, v8, :cond_18

    :cond_15
    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x73

    if-eq v8, v9, :cond_16

    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x53

    if-ne v8, v9, :cond_18

    :cond_16
    aget-char v8, v3, v4

    if-eq v8, v7, :cond_17

    aget-char v8, v3, v4

    if-ne v8, v6, :cond_18

    .line 218
    :cond_17
    const/4 v6, 0x4

    .line 219
    .restart local v6    # "matchlen":I
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_2

    .line 221
    .end local v6    # "matchlen":I
    :cond_18
    const/4 v8, 0x7

    if-lt v4, v8, :cond_22

    add-int/lit8 v8, v4, -0x7

    aget-char v8, v3, v8

    const/16 v9, 0x66

    if-eq v8, v9, :cond_19

    add-int/lit8 v8, v4, -0x7

    aget-char v8, v3, v8

    const/16 v9, 0x46

    if-ne v8, v9, :cond_22

    :cond_19
    add-int/lit8 v8, v4, -0x6

    aget-char v8, v3, v8

    if-eq v8, v13, :cond_1a

    add-int/lit8 v8, v4, -0x6

    aget-char v8, v3, v8

    if-ne v8, v11, :cond_22

    :cond_1a
    add-int/lit8 v8, v4, -0x5

    aget-char v8, v3, v8

    const/16 v9, 0x61

    if-eq v8, v9, :cond_1b

    add-int/lit8 v8, v4, -0x5

    aget-char v8, v3, v8

    const/16 v9, 0x41

    if-ne v8, v9, :cond_22

    :cond_1b
    add-int/lit8 v8, v4, -0x4

    aget-char v8, v3, v8

    const/16 v9, 0x67

    if-eq v8, v9, :cond_1c

    add-int/lit8 v8, v4, -0x4

    aget-char v8, v3, v8

    const/16 v9, 0x47

    if-ne v8, v9, :cond_22

    :cond_1c
    add-int/lit8 v8, v4, -0x3

    aget-char v8, v3, v8

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_1d

    add-int/lit8 v8, v4, -0x3

    aget-char v8, v3, v8

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_22

    :cond_1d
    add-int/lit8 v8, v4, -0x2

    aget-char v8, v3, v8

    if-eq v8, v12, :cond_1e

    add-int/lit8 v8, v4, -0x2

    aget-char v8, v3, v8

    if-ne v8, v10, :cond_22

    :cond_1e
    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x6e

    if-eq v8, v9, :cond_1f

    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x4e

    if-ne v8, v9, :cond_22

    :cond_1f
    aget-char v8, v3, v4

    if-eq v8, v7, :cond_20

    aget-char v7, v3, v4

    if-ne v7, v6, :cond_22

    .line 229
    :cond_20
    const/16 v6, 0x8

    .line 230
    .restart local v6    # "matchlen":I
    or-int/lit8 v2, v2, 0x8

    .line 238
    :goto_2
    const/4 v1, 0x0

    .line 239
    :goto_3
    if-lt v4, v6, :cond_21

    if-nez v1, :cond_21

    .line 240
    sub-int v7, v4, v6

    aget-char v7, v3, v7

    sparse-switch v7, :sswitch_data_0

    .line 251
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 242
    :sswitch_0
    const/4 v1, 0x1

    .line 249
    :sswitch_1
    nop

    .line 253
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 257
    :cond_21
    sub-int/2addr v4, v6

    .line 258
    .end local v6    # "matchlen":I
    goto/16 :goto_0

    .line 233
    :cond_22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 260
    :cond_23
    if-nez v1, :cond_24

    .line 264
    return v2

    .line 261
    :cond_24
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 420
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 421
    iget-object v0, p0, Lorg/osgi/framework/BundlePermission;->actions:Ljava/lang/String;

    invoke-static {v0}, Lorg/osgi/framework/BundlePermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/osgi/framework/BundlePermission;->setTransients(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 419
    .end local p0    # "this":Lorg/osgi/framework/BundlePermission;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setTransients(I)V
    .locals 2
    .param p1, "mask"    # I

    monitor-enter p0

    .line 145
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    .line 149
    :try_start_0
    iput p1, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 146
    .end local p0    # "this":Lorg/osgi/framework/BundlePermission;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local p1    # "mask":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/BundlePermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getActions()Ljava/lang/String;

    .line 411
    .end local p0    # "this":Lorg/osgi/framework/BundlePermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 408
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 377
    return v0

    .line 380
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/BundlePermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 381
    return v2

    .line 384
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/BundlePermission;

    .line 386
    .local v1, "bp":Lorg/osgi/framework/BundlePermission;
    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v3

    invoke-virtual {v1}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osgi/framework/BundlePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 6

    .line 315
    iget-object v0, p0, Lorg/osgi/framework/BundlePermission;->actions:Ljava/lang/String;

    .line 316
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 320
    .local v2, "comma":Z
    iget v3, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 321
    const-string v3, "provide"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const/4 v2, 0x1

    .line 325
    :cond_0
    iget v3, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/16 v5, 0x2c

    if-ne v3, v4, :cond_2

    .line 326
    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    :cond_1
    const-string v3, "require"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    const/4 v2, 0x1

    .line 332
    :cond_2
    iget v3, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 333
    if-eqz v2, :cond_3

    .line 334
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 335
    :cond_3
    const-string v3, "host"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/4 v2, 0x1

    .line 339
    :cond_4
    iget v3, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    .line 340
    if-eqz v2, :cond_5

    .line 341
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    :cond_5
    const-string v3, "fragment"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lorg/osgi/framework/BundlePermission;->actions:Ljava/lang/String;

    .line 347
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "comma":Z
    :cond_7
    return-object v0
.end method

.method declared-synchronized getActionsMask()I
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lorg/osgi/framework/BundlePermission;->action_mask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 160
    .end local p0    # "this":Lorg/osgi/framework/BundlePermission;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .line 396
    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 397
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 398
    .end local v0    # "h":I
    .local v1, "h":I
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 5
    .param p1, "p"    # Ljava/security/Permission;

    .line 292
    instance-of v0, p1, Lorg/osgi/framework/BundlePermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/BundlePermission;

    .line 297
    .local v0, "requested":Lorg/osgi/framework/BundlePermission;
    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v2

    .line 298
    .local v2, "effective":I
    invoke-virtual {v0}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v3

    .line 299
    .local v3, "desired":I
    and-int v4, v2, v3

    if-ne v4, v3, :cond_1

    invoke-super {p0, v0}, Ljava/security/BasicPermission;->implies(Ljava/security/Permission;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 358
    new-instance v0, Lorg/osgi/framework/BundlePermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/BundlePermissionCollection;-><init>()V

    return-object v0
.end method
