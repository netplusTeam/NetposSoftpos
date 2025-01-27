.class public final Lorg/osgi/framework/AdaptPermission;
.super Ljava/security/BasicPermission;
.source "AdaptPermission.java"


# static fields
.field private static final ACTION_ADAPT:I = 0x1

.field private static final ACTION_ALL:I = 0x1

.field static final ACTION_NONE:I = 0x0

.field public static final ADAPT:Ljava/lang/String; = "adapt"

.field private static final serialVersionUID:J = 0x1L


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lorg/osgi/framework/AdaptPermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    invoke-static {p2}, Lorg/osgi/framework/AdaptPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdaptPermission;-><init>(Lorg/osgi/framework/Filter;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/osgi/framework/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "adaptClass"    # Ljava/lang/String;
    .param p2, "adaptableBundle"    # Lorg/osgi/framework/Bundle;
    .param p3, "actions"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    .line 143
    invoke-static {p3}, Lorg/osgi/framework/AdaptPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdaptPermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 144
    iput-object p2, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 145
    if-eqz p1, :cond_1

    .line 148
    if-eqz p2, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "adaptableBundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "adaptClass must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/osgi/framework/Filter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/osgi/framework/Filter;
    .param p2, "mask"    # I

    .line 160
    if-nez p1, :cond_0

    const-string v0, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1, p2}, Lorg/osgi/framework/AdaptPermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 162
    iput-object v0, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 163
    return-void
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

    .line 438
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission;->properties:Ljava/util/Map;

    .line 439
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 440
    return-object v0

    .line 442
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 443
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adaptClass"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 445
    new-instance v2, Lorg/osgi/framework/AdaptPermission$1;

    invoke-direct {v2, p0, v1}, Lorg/osgi/framework/AdaptPermission$1;-><init>(Lorg/osgi/framework/AdaptPermission;Ljava/util/Map;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 461
    :cond_1
    iput-object v1, p0, Lorg/osgi/framework/AdaptPermission;->properties:Ljava/util/Map;

    return-object v1
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 9
    .param p0, "actions"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "seencomma":Z
    const/4 v1, 0x0

    .line 190
    .local v1, "mask":I
    if-nez p0, :cond_0

    .line 191
    return v1

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 196
    .local v2, "a":[C
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 197
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 198
    return v1

    .line 200
    :cond_1
    :goto_0
    const-string v4, "invalid actions: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    .line 204
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

    .line 205
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 210
    .end local v7    # "c":C
    :cond_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_a

    add-int/lit8 v5, v3, -0x4

    aget-char v5, v2, v5

    const/16 v6, 0x41

    const/16 v7, 0x61

    if-eq v5, v7, :cond_4

    add-int/lit8 v5, v3, -0x4

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_a

    :cond_4
    add-int/lit8 v5, v3, -0x3

    aget-char v5, v2, v5

    const/16 v8, 0x64

    if-eq v5, v8, :cond_5

    add-int/lit8 v5, v3, -0x3

    aget-char v5, v2, v5

    const/16 v8, 0x44

    if-ne v5, v8, :cond_a

    :cond_5
    add-int/lit8 v5, v3, -0x2

    aget-char v5, v2, v5

    if-eq v5, v7, :cond_6

    add-int/lit8 v5, v3, -0x2

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_a

    :cond_6
    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    const/16 v6, 0x70

    if-eq v5, v6, :cond_7

    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_a

    :cond_7
    aget-char v5, v2, v3

    const/16 v6, 0x74

    if-eq v5, v6, :cond_8

    aget-char v5, v2, v3

    const/16 v6, 0x54

    if-ne v5, v6, :cond_a

    .line 215
    :cond_8
    const/4 v4, 0x5

    .line 216
    .local v4, "matchlen":I
    or-int/lit8 v1, v1, 0x1

    .line 225
    const/4 v0, 0x0

    .line 226
    :goto_2
    if-lt v3, v4, :cond_9

    if-nez v0, :cond_9

    .line 227
    sub-int v5, v3, v4

    aget-char v5, v2, v5

    sparse-switch v5, :sswitch_data_0

    .line 238
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :sswitch_0
    const/4 v0, 0x1

    .line 236
    :sswitch_1
    nop

    .line 240
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 244
    :cond_9
    sub-int/2addr v3, v4

    .line 245
    .end local v4    # "matchlen":I
    goto/16 :goto_0

    .line 220
    :cond_a
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

    .line 247
    :cond_b
    if-nez v0, :cond_c

    .line 251
    return v1

    .line 248
    :cond_c
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

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 263
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
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

    .line 427
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 428
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/osgi/framework/AdaptPermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iget-object v1, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/AdaptPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdaptPermission;->setTransients(Lorg/osgi/framework/Filter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Lorg/osgi/framework/AdaptPermission;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setTransients(Lorg/osgi/framework/Filter;I)V
    .locals 2
    .param p1, "filter"    # Lorg/osgi/framework/Filter;
    .param p2, "mask"    # I

    .line 172
    iput-object p1, p0, Lorg/osgi/framework/AdaptPermission;->filter:Lorg/osgi/framework/Filter;

    .line 173
    if-eqz p2, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-ne v0, p2, :cond_0

    .line 176
    iput p2, p0, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    .line 177
    return-void

    .line 174
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

    .line 411
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getActions()Ljava/lang/String;

    .line 418
    .end local p0    # "this":Lorg/osgi/framework/AdaptPermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 412
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "cannot serialize"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
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

    .line 377
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 378
    return v0

    .line 381
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/AdaptPermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 382
    return v2

    .line 385
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/AdaptPermission;

    .line 387
    .local v1, "cp":Lorg/osgi/framework/AdaptPermission;
    iget v3, p0, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    iget v4, v1, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    iget-object v4, v1, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

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
    .locals 2

    .line 345
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    .line 346
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 347
    const-string v1, "adapt"

    move-object v0, v1

    iput-object v1, p0, Lorg/osgi/framework/AdaptPermission;->actions:Ljava/lang/String;

    .line 349
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 397
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 398
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 399
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v0, :cond_0

    .line 400
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 402
    :cond_0
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 291
    instance-of v0, p1, Lorg/osgi/framework/AdaptPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    return v1

    .line 294
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdaptPermission;

    .line 295
    .local v0, "requested":Lorg/osgi/framework/AdaptPermission;
    iget-object v2, p0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 296
    return v1

    .line 299
    :cond_1
    iget-object v2, v0, Lorg/osgi/framework/AdaptPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_2

    .line 300
    return v1

    .line 302
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/osgi/framework/AdaptPermission;->implies0(Lorg/osgi/framework/AdaptPermission;I)Z

    move-result v1

    return v1
.end method

.method implies0(Lorg/osgi/framework/AdaptPermission;I)Z
    .locals 3
    .param p1, "requested"    # Lorg/osgi/framework/AdaptPermission;
    .param p2, "effective"    # I

    .line 318
    iget v0, p0, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    or-int/2addr p2, v0

    .line 319
    iget v0, p1, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    .line 320
    .local v0, "desired":I
    and-int v1, p2, v0

    if-eq v1, v0, :cond_0

    .line 321
    const/4 v1, 0x0

    return v1

    .line 324
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/AdaptPermission;->filter:Lorg/osgi/framework/Filter;

    .line 325
    .local v1, "f":Lorg/osgi/framework/Filter;
    if-nez v1, :cond_1

    .line 327
    const/4 v2, 0x1

    return v2

    .line 329
    :cond_1
    invoke-direct {p1}, Lorg/osgi/framework/AdaptPermission;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osgi/framework/Filter;->matches(Ljava/util/Map;)Z

    move-result v2

    return v2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 360
    new-instance v0, Lorg/osgi/framework/AdaptPermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/AdaptPermissionCollection;-><init>()V

    return-object v0
.end method
