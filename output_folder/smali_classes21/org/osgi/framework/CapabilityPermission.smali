.class public final Lorg/osgi/framework/CapabilityPermission;
.super Ljava/security/BasicPermission;
.source "CapabilityPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/CapabilityPermission$Properties;
    }
.end annotation


# static fields
.field private static final ACTION_ALL:I = 0x3

.field static final ACTION_NONE:I = 0x0

.field private static final ACTION_PROVIDE:I = 0x2

.field private static final ACTION_REQUIRE:I = 0x1

.field public static final PROVIDE:Ljava/lang/String; = "provide"

.field public static final REQUIRE:Ljava/lang/String; = "require"

.field static final serialVersionUID:J = -0x6a556b976865ef56L


# instance fields
.field transient action_mask:I

.field private volatile actions:Ljava/lang/String;

.field final transient attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

    .line 201
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    .line 202
    invoke-direct {p0, p1, p2}, Lorg/osgi/framework/CapabilityPermission;->setTransients(Ljava/lang/String;I)V

    .line 203
    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    .line 204
    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 157
    invoke-static {p2}, Lorg/osgi/framework/CapabilityPermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/CapabilityPermission;-><init>(Ljava/lang/String;I)V

    .line 158
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string for filter expression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lorg/osgi/framework/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p3, "providingBundle"    # Lorg/osgi/framework/Bundle;
    .param p4, "actions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/osgi/framework/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    .line 180
    invoke-static {p4}, Lorg/osgi/framework/CapabilityPermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/CapabilityPermission;->setTransients(Ljava/lang/String;I)V

    .line 181
    if-eqz p2, :cond_2

    .line 184
    if-eqz p3, :cond_1

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    .line 188
    iput-object p3, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 189
    iget v0, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must not be null"

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

    .line 500
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->properties:Ljava/util/Map;

    .line 501
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 502
    return-object v0

    .line 504
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 505
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capability.namespace"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v2, :cond_1

    .line 507
    iput-object v1, p0, Lorg/osgi/framework/CapabilityPermission;->properties:Ljava/util/Map;

    return-object v1

    .line 509
    :cond_1
    new-instance v2, Lorg/osgi/framework/CapabilityPermission$1;

    invoke-direct {v2, p0, v1}, Lorg/osgi/framework/CapabilityPermission$1;-><init>(Lorg/osgi/framework/CapabilityPermission;Ljava/util/Map;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 524
    new-instance v2, Lorg/osgi/framework/CapabilityPermission$Properties;

    iget-object v3, p0, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    invoke-direct {v2, v1, v3}, Lorg/osgi/framework/CapabilityPermission$Properties;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object v2, p0, Lorg/osgi/framework/CapabilityPermission;->properties:Ljava/util/Map;

    return-object v2
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 14
    .param p0, "actions"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "seencomma":Z
    const/4 v1, 0x0

    .line 231
    .local v1, "mask":I
    if-nez p0, :cond_0

    .line 232
    return v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 237
    .local v2, "a":[C
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 238
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 239
    return v1

    .line 241
    :cond_1
    :goto_0
    const-string v4, "invalid permission: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    .line 245
    :goto_1
    if-eq v3, v5, :cond_3

    aget-char v6, v2, v3

    move v7, v6

    .local v7, "c":C
    const/16 v8, 0x20

    if-eq v6, v8, :cond_2

    const/16 v6, 0xd

    if-eq v7, v6, :cond_2

    const/16 v6, 0xa

    if-eq v7, v6, :cond_2

    const/16 v6, 0xc

    if-eq v7, v6, :cond_2

    const/16 v6, 0x9

    if-ne v7, v6, :cond_3

    .line 246
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 251
    .end local v7    # "c":C
    :cond_3
    const/16 v5, 0x49

    const/16 v6, 0x69

    const/16 v7, 0x45

    const/16 v8, 0x52

    const/16 v9, 0x65

    const/16 v10, 0x72

    const/4 v11, 0x6

    if-lt v3, v11, :cond_b

    add-int/lit8 v12, v3, -0x6

    aget-char v12, v2, v12

    if-eq v12, v10, :cond_4

    add-int/lit8 v12, v3, -0x6

    aget-char v12, v2, v12

    if-ne v12, v8, :cond_b

    :cond_4
    add-int/lit8 v12, v3, -0x5

    aget-char v12, v2, v12

    if-eq v12, v9, :cond_5

    add-int/lit8 v12, v3, -0x5

    aget-char v12, v2, v12

    if-ne v12, v7, :cond_b

    :cond_5
    add-int/lit8 v12, v3, -0x4

    aget-char v12, v2, v12

    const/16 v13, 0x71

    if-eq v12, v13, :cond_6

    add-int/lit8 v12, v3, -0x4

    aget-char v12, v2, v12

    const/16 v13, 0x51

    if-ne v12, v13, :cond_b

    :cond_6
    add-int/lit8 v12, v3, -0x3

    aget-char v12, v2, v12

    const/16 v13, 0x75

    if-eq v12, v13, :cond_7

    add-int/lit8 v12, v3, -0x3

    aget-char v12, v2, v12

    const/16 v13, 0x55

    if-ne v12, v13, :cond_b

    :cond_7
    add-int/lit8 v12, v3, -0x2

    aget-char v12, v2, v12

    if-eq v12, v6, :cond_8

    add-int/lit8 v12, v3, -0x2

    aget-char v12, v2, v12

    if-ne v12, v5, :cond_b

    :cond_8
    add-int/lit8 v12, v3, -0x1

    aget-char v12, v2, v12

    if-eq v12, v10, :cond_9

    add-int/lit8 v12, v3, -0x1

    aget-char v12, v2, v12

    if-ne v12, v8, :cond_b

    :cond_9
    aget-char v12, v2, v3

    if-eq v12, v9, :cond_a

    aget-char v12, v2, v3

    if-ne v12, v7, :cond_b

    .line 258
    :cond_a
    const/4 v5, 0x7

    .line 259
    .local v5, "matchlen":I
    or-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 261
    .end local v5    # "matchlen":I
    :cond_b
    if-lt v3, v11, :cond_14

    add-int/lit8 v11, v3, -0x6

    aget-char v11, v2, v11

    const/16 v12, 0x70

    if-eq v11, v12, :cond_c

    add-int/lit8 v11, v3, -0x6

    aget-char v11, v2, v11

    const/16 v12, 0x50

    if-ne v11, v12, :cond_14

    :cond_c
    add-int/lit8 v11, v3, -0x5

    aget-char v11, v2, v11

    if-eq v11, v10, :cond_d

    add-int/lit8 v10, v3, -0x5

    aget-char v10, v2, v10

    if-ne v10, v8, :cond_14

    :cond_d
    add-int/lit8 v8, v3, -0x4

    aget-char v8, v2, v8

    const/16 v10, 0x6f

    if-eq v8, v10, :cond_e

    add-int/lit8 v8, v3, -0x4

    aget-char v8, v2, v8

    const/16 v10, 0x4f

    if-ne v8, v10, :cond_14

    :cond_e
    add-int/lit8 v8, v3, -0x3

    aget-char v8, v2, v8

    const/16 v10, 0x76

    if-eq v8, v10, :cond_f

    add-int/lit8 v8, v3, -0x3

    aget-char v8, v2, v8

    const/16 v10, 0x56

    if-ne v8, v10, :cond_14

    :cond_f
    add-int/lit8 v8, v3, -0x2

    aget-char v8, v2, v8

    if-eq v8, v6, :cond_10

    add-int/lit8 v6, v3, -0x2

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_14

    :cond_10
    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_11

    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_14

    :cond_11
    aget-char v5, v2, v3

    if-eq v5, v9, :cond_12

    aget-char v5, v2, v3

    if-ne v5, v7, :cond_14

    .line 268
    :cond_12
    const/4 v5, 0x7

    .line 269
    .restart local v5    # "matchlen":I
    or-int/lit8 v1, v1, 0x2

    .line 277
    :goto_2
    const/4 v0, 0x0

    .line 278
    :goto_3
    if-lt v3, v5, :cond_13

    if-nez v0, :cond_13

    .line 279
    sub-int v6, v3, v5

    aget-char v6, v2, v6

    sparse-switch v6, :sswitch_data_0

    .line 290
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 281
    :sswitch_0
    const/4 v0, 0x1

    .line 288
    :sswitch_1
    nop

    .line 292
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 296
    :cond_13
    sub-int/2addr v3, v5

    .line 297
    .end local v5    # "matchlen":I
    goto/16 :goto_0

    .line 272
    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    :cond_15
    if-nez v0, :cond_16

    .line 303
    return v1

    .line 300
    :cond_16
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

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

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 317
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
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

    .line 489
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 490
    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/CapabilityPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/CapabilityPermission;->setTransients(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 488
    .end local p0    # "this":Lorg/osgi/framework/CapabilityPermission;
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

    .line 213
    if-eqz p2, :cond_0

    and-int/lit8 v0, p2, 0x3

    if-ne v0, p2, :cond_0

    .line 216
    iput p2, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 217
    invoke-static {p1}, Lorg/osgi/framework/CapabilityPermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    .line 218
    return-void

    .line 214
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

    .line 473
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getActions()Ljava/lang/String;

    .line 480
    .end local p0    # "this":Lorg/osgi/framework/CapabilityPermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "cannot serialize"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
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

    .line 436
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 437
    return v0

    .line 440
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/CapabilityPermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 441
    return v2

    .line 444
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/CapabilityPermission;

    .line 446
    .local v1, "cp":Lorg/osgi/framework/CapabilityPermission;
    iget v3, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    iget v4, v1, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    iget-object v4, v1, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    iget-object v4, v1, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 6

    .line 388
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    .line 389
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 390
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 393
    .local v2, "comma":Z
    iget v3, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 394
    .local v3, "mask":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 395
    const-string v4, "require"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/4 v2, 0x1

    .line 399
    :cond_0
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 400
    if-eqz v2, :cond_1

    .line 401
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :cond_1
    const-string v4, "provide"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    iput-object v4, p0, Lorg/osgi/framework/CapabilityPermission;->actions:Ljava/lang/String;

    .line 408
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "comma":Z
    .end local v3    # "mask":I
    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 457
    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 458
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 459
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 460
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v0, :cond_1

    .line 463
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 465
    :cond_1
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 339
    instance-of v0, p1, Lorg/osgi/framework/CapabilityPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    return v1

    .line 342
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/CapabilityPermission;

    .line 343
    .local v0, "requested":Lorg/osgi/framework/CapabilityPermission;
    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 344
    return v1

    .line 347
    :cond_1
    iget-object v2, v0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_2

    .line 348
    return v1

    .line 350
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/osgi/framework/CapabilityPermission;->implies0(Lorg/osgi/framework/CapabilityPermission;I)Z

    move-result v1

    return v1
.end method

.method implies0(Lorg/osgi/framework/CapabilityPermission;I)Z
    .locals 3
    .param p1, "requested"    # Lorg/osgi/framework/CapabilityPermission;
    .param p2, "effective"    # I

    .line 366
    iget v0, p0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    or-int/2addr p2, v0

    .line 367
    iget v0, p1, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 368
    .local v0, "desired":I
    and-int v1, p2, v0

    if-eq v1, v0, :cond_0

    .line 369
    const/4 v1, 0x0

    return v1

    .line 372
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    .line 373
    .local v1, "f":Lorg/osgi/framework/Filter;
    if-nez v1, :cond_1

    .line 374
    invoke-super {p0, p1}, Ljava/security/BasicPermission;->implies(Ljava/security/Permission;)Z

    move-result v2

    return v2

    .line 376
    :cond_1
    invoke-direct {p1}, Lorg/osgi/framework/CapabilityPermission;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osgi/framework/Filter;->matches(Ljava/util/Map;)Z

    move-result v2

    return v2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 420
    new-instance v0, Lorg/osgi/framework/CapabilityPermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/CapabilityPermissionCollection;-><init>()V

    return-object v0
.end method
