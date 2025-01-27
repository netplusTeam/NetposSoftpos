.class public final Lorg/osgi/framework/PackagePermission;
.super Ljava/security/BasicPermission;
.source "PackagePermission.java"


# static fields
.field private static final ACTION_ALL:I = 0x3

.field private static final ACTION_EXPORT:I = 0x1

.field private static final ACTION_IMPORT:I = 0x2

.field static final ACTION_NONE:I = 0x0

.field public static final EXPORT:Ljava/lang/String; = "export"

.field public static final EXPORTONLY:Ljava/lang/String; = "exportonly"

.field public static final IMPORT:Ljava/lang/String; = "import"

.field static final serialVersionUID:J = -0x46e2376ef3ff74ffL


# instance fields
.field transient action_mask:I

.field private volatile actions:Ljava/lang/String;

.field final transient bundle:Lorg/osgi/framework/Bundle;

.field transient filter:Lorg/osgi/framework/Filter;

.field private volatile transient properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 210
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    .line 211
    invoke-direct {p0, p1, p2}, Lorg/osgi/framework/PackagePermission;->setTransients(Ljava/lang/String;I)V

    .line 212
    iput-object v0, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 169
    invoke-static {p2}, Lorg/osgi/framework/PackagePermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/PackagePermission;-><init>(Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string for filter expression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/osgi/framework/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exportingBundle"    # Lorg/osgi/framework/Bundle;
    .param p3, "actions"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    .line 190
    invoke-static {p3}, Lorg/osgi/framework/PackagePermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/PackagePermission;->setTransients(Ljava/lang/String;I)V

    .line 191
    iput-object p2, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 192
    if-eqz p2, :cond_2

    .line 195
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->filter:Lorg/osgi/framework/Filter;

    if-nez v0, :cond_1

    .line 198
    iget v0, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 201
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->properties:Ljava/util/Map;

    .line 540
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 541
    return-object v0

    .line 543
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 544
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package.name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v2, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 546
    new-instance v2, Lorg/osgi/framework/PackagePermission$1;

    invoke-direct {v2, p0, v1}, Lorg/osgi/framework/PackagePermission$1;-><init>(Lorg/osgi/framework/PackagePermission;Ljava/util/Map;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 562
    :cond_1
    iput-object v1, p0, Lorg/osgi/framework/PackagePermission;->properties:Ljava/util/Map;

    return-object v1
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 17
    .param p0, "actions"    # Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 237
    .local v1, "seencomma":Z
    const/4 v2, 0x0

    .line 239
    .local v2, "mask":I
    if-nez v0, :cond_0

    .line 240
    return v2

    .line 243
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 245
    .local v3, "a":[C
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 246
    .local v4, "i":I
    if-gez v4, :cond_1

    .line 247
    return v2

    .line 249
    :cond_1
    :goto_0
    const-string v5, "invalid permission: "

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1e

    .line 253
    :goto_1
    const/16 v7, 0x9

    if-eq v4, v6, :cond_3

    aget-char v8, v3, v4

    move v9, v8

    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v8, v10, :cond_2

    const/16 v8, 0xd

    if-eq v9, v8, :cond_2

    const/16 v8, 0xa

    if-eq v9, v8, :cond_2

    const/16 v8, 0xc

    if-eq v9, v8, :cond_2

    if-ne v9, v7, :cond_3

    .line 254
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 259
    .end local v9    # "c":C
    :cond_3
    const/16 v6, 0x54

    const/16 v8, 0x52

    const/16 v9, 0x74

    const/16 v10, 0x72

    const/16 v11, 0x50

    const/16 v12, 0x70

    const/16 v13, 0x4f

    const/16 v14, 0x6f

    const/4 v15, 0x5

    if-lt v4, v15, :cond_a

    add-int/lit8 v16, v4, -0x5

    aget-char v7, v3, v16

    const/16 v15, 0x69

    if-eq v7, v15, :cond_4

    add-int/lit8 v7, v4, -0x5

    aget-char v7, v3, v7

    const/16 v15, 0x49

    if-ne v7, v15, :cond_a

    :cond_4
    add-int/lit8 v7, v4, -0x4

    aget-char v7, v3, v7

    const/16 v15, 0x6d

    if-eq v7, v15, :cond_5

    add-int/lit8 v7, v4, -0x4

    aget-char v7, v3, v7

    const/16 v15, 0x4d

    if-ne v7, v15, :cond_a

    :cond_5
    add-int/lit8 v7, v4, -0x3

    aget-char v7, v3, v7

    if-eq v7, v12, :cond_6

    add-int/lit8 v7, v4, -0x3

    aget-char v7, v3, v7

    if-ne v7, v11, :cond_a

    :cond_6
    add-int/lit8 v7, v4, -0x2

    aget-char v7, v3, v7

    if-eq v7, v14, :cond_7

    add-int/lit8 v7, v4, -0x2

    aget-char v7, v3, v7

    if-ne v7, v13, :cond_a

    :cond_7
    add-int/lit8 v7, v4, -0x1

    aget-char v7, v3, v7

    if-eq v7, v10, :cond_8

    add-int/lit8 v7, v4, -0x1

    aget-char v7, v3, v7

    if-ne v7, v8, :cond_a

    :cond_8
    aget-char v7, v3, v4

    if-eq v7, v9, :cond_9

    aget-char v7, v3, v4

    if-ne v7, v6, :cond_a

    .line 265
    :cond_9
    const/4 v6, 0x6

    .line 266
    .local v6, "matchlen":I
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 269
    .end local v6    # "matchlen":I
    :cond_a
    const/16 v7, 0x58

    const/16 v15, 0x45

    const/16 v6, 0x78

    const/16 v9, 0x65

    const/4 v8, 0x5

    if-lt v4, v8, :cond_11

    add-int/lit8 v8, v4, -0x5

    aget-char v8, v3, v8

    if-eq v8, v9, :cond_b

    add-int/lit8 v8, v4, -0x5

    aget-char v8, v3, v8

    if-ne v8, v15, :cond_11

    :cond_b
    add-int/lit8 v8, v4, -0x4

    aget-char v8, v3, v8

    if-eq v8, v6, :cond_c

    add-int/lit8 v8, v4, -0x4

    aget-char v8, v3, v8

    if-ne v8, v7, :cond_11

    :cond_c
    add-int/lit8 v8, v4, -0x3

    aget-char v8, v3, v8

    if-eq v8, v12, :cond_d

    add-int/lit8 v8, v4, -0x3

    aget-char v8, v3, v8

    if-ne v8, v11, :cond_11

    :cond_d
    add-int/lit8 v8, v4, -0x2

    aget-char v8, v3, v8

    if-eq v8, v14, :cond_e

    add-int/lit8 v8, v4, -0x2

    aget-char v8, v3, v8

    if-ne v8, v13, :cond_11

    :cond_e
    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    if-eq v8, v10, :cond_f

    add-int/lit8 v8, v4, -0x1

    aget-char v8, v3, v8

    const/16 v10, 0x52

    if-ne v8, v10, :cond_11

    :cond_f
    aget-char v8, v3, v4

    const/16 v10, 0x74

    if-eq v8, v10, :cond_10

    aget-char v8, v3, v4

    const/16 v10, 0x54

    if-ne v8, v10, :cond_11

    .line 275
    :cond_10
    const/4 v6, 0x6

    .line 276
    .restart local v6    # "matchlen":I
    or-int/lit8 v2, v2, 0x3

    goto/16 :goto_2

    .line 279
    .end local v6    # "matchlen":I
    :cond_11
    const/16 v8, 0x9

    if-lt v4, v8, :cond_1d

    add-int/lit8 v8, v4, -0x9

    aget-char v8, v3, v8

    if-eq v8, v9, :cond_12

    add-int/lit8 v8, v4, -0x9

    aget-char v8, v3, v8

    if-ne v8, v15, :cond_1d

    :cond_12
    add-int/lit8 v8, v4, -0x8

    aget-char v8, v3, v8

    if-eq v8, v6, :cond_13

    add-int/lit8 v6, v4, -0x8

    aget-char v6, v3, v6

    if-ne v6, v7, :cond_1d

    :cond_13
    add-int/lit8 v6, v4, -0x7

    aget-char v6, v3, v6

    if-eq v6, v12, :cond_14

    add-int/lit8 v6, v4, -0x7

    aget-char v6, v3, v6

    if-ne v6, v11, :cond_1d

    :cond_14
    add-int/lit8 v6, v4, -0x6

    aget-char v6, v3, v6

    if-eq v6, v14, :cond_15

    add-int/lit8 v6, v4, -0x6

    aget-char v6, v3, v6

    if-ne v6, v13, :cond_1d

    :cond_15
    add-int/lit8 v6, v4, -0x5

    aget-char v6, v3, v6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_16

    add-int/lit8 v6, v4, -0x5

    aget-char v6, v3, v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_1d

    :cond_16
    add-int/lit8 v6, v4, -0x4

    aget-char v6, v3, v6

    const/16 v7, 0x74

    if-eq v6, v7, :cond_17

    add-int/lit8 v6, v4, -0x4

    aget-char v6, v3, v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_1d

    :cond_17
    add-int/lit8 v6, v4, -0x3

    aget-char v6, v3, v6

    if-eq v6, v14, :cond_18

    add-int/lit8 v6, v4, -0x3

    aget-char v6, v3, v6

    if-ne v6, v13, :cond_1d

    :cond_18
    add-int/lit8 v6, v4, -0x2

    aget-char v6, v3, v6

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_19

    add-int/lit8 v6, v4, -0x2

    aget-char v6, v3, v6

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_1d

    :cond_19
    add-int/lit8 v6, v4, -0x1

    aget-char v6, v3, v6

    const/16 v7, 0x6c

    if-eq v6, v7, :cond_1a

    add-int/lit8 v6, v4, -0x1

    aget-char v6, v3, v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_1d

    :cond_1a
    aget-char v6, v3, v4

    const/16 v7, 0x79

    if-eq v6, v7, :cond_1b

    aget-char v6, v3, v4

    const/16 v7, 0x59

    if-ne v6, v7, :cond_1d

    .line 289
    :cond_1b
    const/16 v6, 0xa

    .line 290
    .restart local v6    # "matchlen":I
    or-int/lit8 v2, v2, 0x1

    .line 300
    :goto_2
    const/4 v1, 0x0

    .line 301
    :goto_3
    if-lt v4, v6, :cond_1c

    if-nez v1, :cond_1c

    .line 302
    sub-int v7, v4, v6

    aget-char v7, v3, v7

    sparse-switch v7, :sswitch_data_0

    .line 313
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

    .line 304
    :sswitch_0
    const/4 v1, 0x1

    .line 311
    :sswitch_1
    nop

    .line 315
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 319
    :cond_1c
    sub-int/2addr v4, v6

    .line 320
    .end local v6    # "matchlen":I
    goto/16 :goto_0

    .line 294
    :cond_1d
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

    .line 322
    :cond_1e
    if-nez v1, :cond_1f

    .line 326
    return v2

    .line 323
    :cond_1f
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

.method private static parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;
    .locals 3
    .param p0, "filterString"    # Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 348
    throw v1
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 528
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 529
    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/PackagePermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/PackagePermission;->setTransients(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    .line 527
    .end local p0    # "this":Lorg/osgi/framework/PackagePermission;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setTransients(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 221
    if-eqz p2, :cond_0

    and-int/lit8 v0, p2, 0x3

    if-ne v0, p2, :cond_0

    .line 224
    iput p2, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    .line 225
    invoke-static {p1}, Lorg/osgi/framework/PackagePermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/framework/PackagePermission;->filter:Lorg/osgi/framework/Filter;

    .line 226
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getActions()Ljava/lang/String;

    .line 519
    .end local p0    # "this":Lorg/osgi/framework/PackagePermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 513
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "cannot serialize"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
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

    .line 478
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 479
    return v0

    .line 482
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/PackagePermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 483
    return v2

    .line 486
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/PackagePermission;

    .line 488
    .local v1, "pp":Lorg/osgi/framework/PackagePermission;
    iget v3, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    iget v4, v1, Lorg/osgi/framework/PackagePermission;->action_mask:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osgi/framework/PackagePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    iget-object v4, v1, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 6

    .line 430
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    .line 431
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 432
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 433
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 435
    .local v2, "comma":Z
    iget v3, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    .line 436
    .local v3, "mask":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 437
    const-string v4, "exportonly"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const/4 v2, 0x1

    .line 441
    :cond_0
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 442
    if-eqz v2, :cond_1

    .line 443
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    :cond_1
    const-string v4, "import"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    iput-object v4, p0, Lorg/osgi/framework/PackagePermission;->actions:Ljava/lang/String;

    .line 449
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "comma":Z
    .end local v3    # "mask":I
    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 498
    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 499
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/PackagePermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 500
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v0, :cond_0

    .line 501
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 503
    :cond_0
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 377
    instance-of v0, p1, Lorg/osgi/framework/PackagePermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 378
    return v1

    .line 380
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/PackagePermission;

    .line 381
    .local v0, "requested":Lorg/osgi/framework/PackagePermission;
    iget-object v2, p0, Lorg/osgi/framework/PackagePermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 382
    return v1

    .line 385
    :cond_1
    iget-object v2, v0, Lorg/osgi/framework/PackagePermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_2

    .line 386
    return v1

    .line 388
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/osgi/framework/PackagePermission;->implies0(Lorg/osgi/framework/PackagePermission;I)Z

    move-result v1

    return v1
.end method

.method implies0(Lorg/osgi/framework/PackagePermission;I)Z
    .locals 3
    .param p1, "requested"    # Lorg/osgi/framework/PackagePermission;
    .param p2, "effective"    # I

    .line 404
    iget v0, p0, Lorg/osgi/framework/PackagePermission;->action_mask:I

    or-int/2addr p2, v0

    .line 405
    iget v0, p1, Lorg/osgi/framework/PackagePermission;->action_mask:I

    .line 406
    .local v0, "desired":I
    and-int v1, p2, v0

    if-eq v1, v0, :cond_0

    .line 407
    const/4 v1, 0x0

    return v1

    .line 410
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/PackagePermission;->filter:Lorg/osgi/framework/Filter;

    .line 411
    .local v1, "f":Lorg/osgi/framework/Filter;
    if-nez v1, :cond_1

    .line 412
    invoke-super {p0, p1}, Ljava/security/BasicPermission;->implies(Ljava/security/Permission;)Z

    move-result v2

    return v2

    .line 414
    :cond_1
    invoke-direct {p1}, Lorg/osgi/framework/PackagePermission;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osgi/framework/Filter;->matches(Ljava/util/Map;)Z

    move-result v2

    return v2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 460
    new-instance v0, Lorg/osgi/framework/PackagePermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/PackagePermissionCollection;-><init>()V

    return-object v0
.end method
