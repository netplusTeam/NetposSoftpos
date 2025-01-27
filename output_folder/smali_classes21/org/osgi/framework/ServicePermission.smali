.class public final Lorg/osgi/framework/ServicePermission;
.super Ljava/security/BasicPermission;
.source "ServicePermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/ServicePermission$Properties;
    }
.end annotation


# static fields
.field private static final ACTION_ALL:I = 0x3

.field private static final ACTION_GET:I = 0x1

.field static final ACTION_NONE:I = 0x0

.field private static final ACTION_REGISTER:I = 0x2

.field public static final GET:Ljava/lang/String; = "get"

.field public static final REGISTER:Ljava/lang/String; = "register"

.field static final serialVersionUID:J = -0x6a556b976865ef56L


# instance fields
.field transient action_mask:I

.field private volatile actions:Ljava/lang/String;

.field transient filter:Lorg/osgi/framework/Filter;

.field final transient objectClass:[Ljava/lang/String;

.field private transient prefix:Ljava/lang/String;

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

.field final transient service:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end field

.field private transient wildcard:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 223
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lorg/osgi/framework/ServicePermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/osgi/framework/ServicePermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 225
    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    .line 226
    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->objectClass:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 172
    invoke-static {p2}, Lorg/osgi/framework/ServicePermission;->parseActions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/ServicePermission;-><init>(Ljava/lang/String;I)V

    .line 173
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string for filter expression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/osgi/framework/ServiceReference;Ljava/lang/String;)V
    .locals 2
    .param p2, "actions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 191
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    invoke-static {p1}, Lorg/osgi/framework/ServicePermission;->createName(Lorg/osgi/framework/ServiceReference;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    .line 192
    invoke-static {p2}, Lorg/osgi/framework/ServicePermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/ServicePermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 193
    iput-object p1, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    .line 194
    const-string v0, "objectClass"

    invoke-interface {p1, v0}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->objectClass:[Ljava/lang/String;

    .line 195
    iget v0, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid action string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createName(Lorg/osgi/framework/ServiceReference;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 207
    .local p0, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    if-eqz p0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "(service.id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "service.id"

    invoke-interface {p0, v1}, Lorg/osgi/framework/ServiceReference;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reference must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->properties:Ljava/util/Map;

    .line 553
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 554
    return-object v0

    .line 556
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-nez v1, :cond_1

    .line 557
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 558
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "objectClass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iput-object v0, p0, Lorg/osgi/framework/ServicePermission;->properties:Ljava/util/Map;

    return-object v0

    .line 561
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 562
    .local v1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    invoke-interface {v2}, Lorg/osgi/framework/ServiceReference;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v2

    .line 563
    .local v2, "bundle":Lorg/osgi/framework/Bundle;
    if-eqz v2, :cond_2

    .line 564
    new-instance v3, Lorg/osgi/framework/ServicePermission$1;

    invoke-direct {v3, p0, v1, v2}, Lorg/osgi/framework/ServicePermission$1;-><init>(Lorg/osgi/framework/ServicePermission;Ljava/util/Map;Lorg/osgi/framework/Bundle;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 580
    :cond_2
    new-instance v3, Lorg/osgi/framework/ServicePermission$Properties;

    iget-object v4, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    invoke-direct {v3, v1, v4}, Lorg/osgi/framework/ServicePermission$Properties;-><init>(Ljava/util/Map;Lorg/osgi/framework/ServiceReference;)V

    iput-object v3, p0, Lorg/osgi/framework/ServicePermission;->properties:Ljava/util/Map;

    return-object v3
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 14
    .param p0, "actions"    # Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "seencomma":Z
    const/4 v1, 0x0

    .line 262
    .local v1, "mask":I
    if-nez p0, :cond_0

    .line 263
    return v1

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 268
    .local v2, "a":[C
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 269
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 270
    return v1

    .line 272
    :cond_1
    :goto_0
    const-string v4, "invalid permission: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_12

    .line 276
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

    .line 277
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 282
    .end local v7    # "c":C
    :cond_3
    const/16 v5, 0x54

    const/16 v6, 0x74

    const/16 v7, 0x47

    const/16 v8, 0x67

    const/16 v9, 0x45

    const/16 v10, 0x65

    const/4 v11, 0x2

    if-lt v3, v11, :cond_7

    add-int/lit8 v11, v3, -0x2

    aget-char v11, v2, v11

    if-eq v11, v8, :cond_4

    add-int/lit8 v11, v3, -0x2

    aget-char v11, v2, v11

    if-ne v11, v7, :cond_7

    :cond_4
    add-int/lit8 v11, v3, -0x1

    aget-char v11, v2, v11

    if-eq v11, v10, :cond_5

    add-int/lit8 v11, v3, -0x1

    aget-char v11, v2, v11

    if-ne v11, v9, :cond_7

    :cond_5
    aget-char v11, v2, v3

    if-eq v11, v6, :cond_6

    aget-char v11, v2, v3

    if-ne v11, v5, :cond_7

    .line 285
    :cond_6
    const/4 v5, 0x3

    .line 286
    .local v5, "matchlen":I
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 289
    .end local v5    # "matchlen":I
    :cond_7
    const/4 v11, 0x7

    if-lt v3, v11, :cond_11

    add-int/lit8 v11, v3, -0x7

    aget-char v11, v2, v11

    const/16 v12, 0x52

    const/16 v13, 0x72

    if-eq v11, v13, :cond_8

    add-int/lit8 v11, v3, -0x7

    aget-char v11, v2, v11

    if-ne v11, v12, :cond_11

    :cond_8
    add-int/lit8 v11, v3, -0x6

    aget-char v11, v2, v11

    if-eq v11, v10, :cond_9

    add-int/lit8 v11, v3, -0x6

    aget-char v11, v2, v11

    if-ne v11, v9, :cond_11

    :cond_9
    add-int/lit8 v11, v3, -0x5

    aget-char v11, v2, v11

    if-eq v11, v8, :cond_a

    add-int/lit8 v8, v3, -0x5

    aget-char v8, v2, v8

    if-ne v8, v7, :cond_11

    :cond_a
    add-int/lit8 v7, v3, -0x4

    aget-char v7, v2, v7

    const/16 v8, 0x69

    if-eq v7, v8, :cond_b

    add-int/lit8 v7, v3, -0x4

    aget-char v7, v2, v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_11

    :cond_b
    add-int/lit8 v7, v3, -0x3

    aget-char v7, v2, v7

    const/16 v8, 0x73

    if-eq v7, v8, :cond_c

    add-int/lit8 v7, v3, -0x3

    aget-char v7, v2, v7

    const/16 v8, 0x53

    if-ne v7, v8, :cond_11

    :cond_c
    add-int/lit8 v7, v3, -0x2

    aget-char v7, v2, v7

    if-eq v7, v6, :cond_d

    add-int/lit8 v6, v3, -0x2

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_11

    :cond_d
    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    if-eq v5, v10, :cond_e

    add-int/lit8 v5, v3, -0x1

    aget-char v5, v2, v5

    if-ne v5, v9, :cond_11

    :cond_e
    aget-char v5, v2, v3

    if-eq v5, v13, :cond_f

    aget-char v5, v2, v3

    if-ne v5, v12, :cond_11

    .line 297
    :cond_f
    const/16 v5, 0x8

    .line 298
    .restart local v5    # "matchlen":I
    or-int/lit8 v1, v1, 0x2

    .line 307
    :goto_2
    const/4 v0, 0x0

    .line 308
    :goto_3
    if-lt v3, v5, :cond_10

    if-nez v0, :cond_10

    .line 309
    sub-int v6, v3, v5

    aget-char v6, v2, v6

    sparse-switch v6, :sswitch_data_0

    .line 320
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

    .line 311
    :sswitch_0
    const/4 v0, 0x1

    .line 318
    :sswitch_1
    nop

    .line 322
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 326
    :cond_10
    sub-int/2addr v3, v5

    .line 327
    .end local v5    # "matchlen":I
    goto/16 :goto_0

    .line 302
    :cond_11
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

    .line 329
    :cond_12
    if-nez v0, :cond_13

    .line 333
    return v1

    .line 330
    :cond_13
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

.method private static parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;
    .locals 3
    .param p0, "filterString"    # Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 347
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 355
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

    .line 541
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 542
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/osgi/framework/ServicePermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iget-object v1, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/ServicePermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/ServicePermission;->setTransients(Lorg/osgi/framework/Filter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 540
    .end local p0    # "this":Lorg/osgi/framework/ServicePermission;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setTransients(Lorg/osgi/framework/Filter;I)V
    .locals 6
    .param p1, "f"    # Lorg/osgi/framework/Filter;
    .param p2, "mask"    # I

    .line 235
    if-eqz p2, :cond_3

    and-int/lit8 v0, p2, 0x3

    if-ne v0, p2, :cond_3

    .line 238
    iput p2, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 239
    iput-object p1, p0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    .line 240
    if-nez p1, :cond_2

    .line 241
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 244
    .local v1, "l":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    if-eq v1, v5, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lorg/osgi/framework/ServicePermission;->wildcard:Z

    .line 245
    if-eqz v2, :cond_2

    if-le v1, v5, :cond_2

    .line 246
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osgi/framework/ServicePermission;->prefix:Ljava/lang/String;

    .line 249
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "l":I
    :cond_2
    return-void

    .line 236
    :cond_3
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

    .line 525
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getActions()Ljava/lang/String;

    .line 532
    .end local p0    # "this":Lorg/osgi/framework/ServicePermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 526
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "cannot serialize"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
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

    .line 492
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 493
    return v0

    .line 496
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/ServicePermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 497
    return v2

    .line 500
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/ServicePermission;

    .line 502
    .local v1, "sp":Lorg/osgi/framework/ServicePermission;
    iget v3, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    iget v4, v1, Lorg/osgi/framework/ServicePermission;->action_mask:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    iget-object v4, v1, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Lorg/osgi/framework/ServiceReference;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 6

    .line 444
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    .line 445
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 446
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 449
    .local v2, "comma":Z
    iget v3, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 450
    .local v3, "mask":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 451
    const-string v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const/4 v2, 0x1

    .line 455
    :cond_0
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 456
    if-eqz v2, :cond_1

    .line 457
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    :cond_1
    const-string v4, "register"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    iput-object v4, p0, Lorg/osgi/framework/ServicePermission;->actions:Ljava/lang/String;

    .line 464
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "comma":Z
    .end local v3    # "mask":I
    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 512
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 513
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 514
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-eqz v0, :cond_0

    .line 515
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 517
    :cond_0
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 369
    instance-of v0, p1, Lorg/osgi/framework/ServicePermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 370
    return v1

    .line 372
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServicePermission;

    .line 373
    .local v0, "requested":Lorg/osgi/framework/ServicePermission;
    iget-object v2, p0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-eqz v2, :cond_1

    .line 374
    return v1

    .line 377
    :cond_1
    iget-object v2, v0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_2

    .line 378
    return v1

    .line 380
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/osgi/framework/ServicePermission;->implies0(Lorg/osgi/framework/ServicePermission;I)Z

    move-result v1

    return v1
.end method

.method implies0(Lorg/osgi/framework/ServicePermission;I)Z
    .locals 10
    .param p1, "requested"    # Lorg/osgi/framework/ServicePermission;
    .param p2, "effective"    # I

    .line 396
    iget v0, p0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    or-int/2addr p2, v0

    .line 397
    iget v0, p1, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 398
    .local v0, "desired":I
    and-int v1, p2, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 399
    return v2

    .line 402
    :cond_0
    iget-boolean v1, p0, Lorg/osgi/framework/ServicePermission;->wildcard:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/osgi/framework/ServicePermission;->prefix:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 403
    return v3

    .line 406
    :cond_1
    iget-object v4, p0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    .line 407
    .local v4, "f":Lorg/osgi/framework/Filter;
    if-eqz v4, :cond_2

    .line 408
    invoke-direct {p1}, Lorg/osgi/framework/ServicePermission;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/osgi/framework/Filter;->matches(Ljava/util/Map;)Z

    move-result v1

    return v1

    .line 411
    :cond_2
    iget-object v5, p1, Lorg/osgi/framework/ServicePermission;->objectClass:[Ljava/lang/String;

    .line 412
    .local v5, "requestedNames":[Ljava/lang/String;
    if-nez v5, :cond_3

    .line 413
    invoke-super {p0, p1}, Ljava/security/BasicPermission;->implies(Ljava/security/Permission;)Z

    move-result v1

    return v1

    .line 416
    :cond_3
    if-eqz v1, :cond_6

    .line 417
    iget-object v1, p0, Lorg/osgi/framework/ServicePermission;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 418
    .local v1, "pl":I
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v5

    .local v7, "l":I
    :goto_0
    if-ge v6, v7, :cond_5

    .line 419
    aget-object v8, v5, v6

    .line 420
    .local v8, "requestedName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v1, :cond_4

    iget-object v9, p0, Lorg/osgi/framework/ServicePermission;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 421
    return v3

    .line 418
    .end local v8    # "requestedName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "pl":I
    .end local v6    # "i":I
    .end local v7    # "l":I
    :cond_5
    goto :goto_2

    .line 425
    :cond_6
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    array-length v7, v5

    .restart local v7    # "l":I
    :goto_1
    if-ge v6, v7, :cond_8

    .line 427
    aget-object v8, v5, v6

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 428
    return v3

    .line 426
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 432
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "l":I
    :cond_8
    :goto_2
    return v2
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 476
    new-instance v0, Lorg/osgi/framework/ServicePermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/ServicePermissionCollection;-><init>()V

    return-object v0
.end method
