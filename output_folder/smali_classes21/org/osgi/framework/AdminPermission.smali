.class public final Lorg/osgi/framework/AdminPermission;
.super Ljava/security/BasicPermission;
.source "AdminPermission.java"


# static fields
.field private static final ACTION_ALL:I = 0xfdf

.field private static final ACTION_CLASS:I = 0x1

.field private static final ACTION_CONTEXT:I = 0x400

.field private static final ACTION_EXECUTE:I = 0x2

.field private static final ACTION_EXTENSIONLIFECYCLE:I = 0x200

.field private static final ACTION_LIFECYCLE:I = 0x4

.field private static final ACTION_LISTENER:I = 0x8

.field private static final ACTION_METADATA:I = 0x10

.field static final ACTION_NONE:I = 0x0

.field private static final ACTION_RESOLVE:I = 0x40

.field private static final ACTION_RESOURCE:I = 0x80

.field private static final ACTION_STARTLEVEL:I = 0x100

.field private static final ACTION_WEAVE:I = 0x800

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final EXECUTE:Ljava/lang/String; = "execute"

.field public static final EXTENSIONLIFECYCLE:Ljava/lang/String; = "extensionLifecycle"

.field public static final LIFECYCLE:Ljava/lang/String; = "lifecycle"

.field public static final LISTENER:Ljava/lang/String; = "listener"

.field public static final METADATA:Ljava/lang/String; = "metadata"

.field public static final RESOLVE:Ljava/lang/String; = "resolve"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final STARTLEVEL:Ljava/lang/String; = "startlevel"

.field public static final WEAVE:Ljava/lang/String; = "weave"

.field private static final recurse:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/osgi/framework/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x442dd43046aaa89L


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
.method static constructor <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/osgi/framework/AdminPermission;->recurse:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 230
    const/4 v0, 0x0

    const/16 v1, 0xfdf

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdminPermission;-><init>(Lorg/osgi/framework/Filter;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lorg/osgi/framework/AdminPermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    invoke-static {p2}, Lorg/osgi/framework/AdminPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdminPermission;-><init>(Lorg/osgi/framework/Filter;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lorg/osgi/framework/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p2, "actions"    # Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lorg/osgi/framework/AdminPermission;->createName(Lorg/osgi/framework/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    .line 287
    invoke-static {p2}, Lorg/osgi/framework/AdminPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdminPermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 288
    iput-object p1, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 289
    return-void
.end method

.method constructor <init>(Lorg/osgi/framework/Filter;I)V
    .locals 1
    .param p1, "filter"    # Lorg/osgi/framework/Filter;
    .param p2, "mask"    # I

    .line 314
    if-nez p1, :cond_0

    const-string v0, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/osgi/framework/AdminPermission;->setTransients(Lorg/osgi/framework/Filter;I)V

    .line 316
    iput-object v0, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    .line 317
    return-void
.end method

.method private static createName(Lorg/osgi/framework/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;

    .line 298
    if-eqz p0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/osgi/framework/Bundle;->getBundleId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 303
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 299
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lorg/osgi/framework/AdminPermission;->properties:Ljava/util/Map;

    .line 830
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 831
    return-object v0

    .line 838
    :cond_0
    sget-object v1, Lorg/osgi/framework/AdminPermission;->recurse:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    .line 839
    .local v2, "mark":Ljava/lang/Object;
    iget-object v3, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 840
    return-object v4

    .line 842
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 844
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 845
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lorg/osgi/framework/AdminPermission$1;

    invoke-direct {v5, p0, v3}, Lorg/osgi/framework/AdminPermission$1;-><init>(Lorg/osgi/framework/AdminPermission;Ljava/util/Map;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 860
    iput-object v3, p0, Lorg/osgi/framework/AdminPermission;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v3

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    sget-object v3, Lorg/osgi/framework/AdminPermission;->recurse:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private static parseActions(Ljava/lang/String;)I
    .locals 18
    .param p0, "actions"    # Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    if-eqz v0, :cond_6f

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, "seencomma":Z
    const/4 v2, 0x0

    .line 348
    .local v2, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 350
    .local v3, "a":[C
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 351
    .local v4, "i":I
    if-gez v4, :cond_1

    .line 352
    return v2

    .line 354
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6d

    .line 358
    :goto_1
    const/4 v5, -0x1

    const/16 v6, 0x9

    if-eq v4, v5, :cond_3

    aget-char v5, v3, v4

    move v7, v5

    .local v7, "c":C
    const/16 v8, 0x20

    if-eq v5, v8, :cond_2

    const/16 v5, 0xd

    if-eq v7, v5, :cond_2

    const/16 v5, 0xa

    if-eq v7, v5, :cond_2

    const/16 v5, 0xc

    if-eq v7, v5, :cond_2

    if-ne v7, v6, :cond_3

    .line 359
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 364
    .end local v7    # "c":C
    :cond_3
    const/16 v5, 0x61

    const/16 v7, 0x53

    const/16 v8, 0x41

    const/16 v9, 0x73

    const/16 v10, 0x43

    const/16 v11, 0x63

    const/16 v12, 0x4c

    const/16 v13, 0x6c

    const/4 v14, 0x4

    if-lt v4, v14, :cond_9

    add-int/lit8 v15, v4, -0x4

    aget-char v15, v3, v15

    if-eq v15, v11, :cond_4

    add-int/lit8 v15, v4, -0x4

    aget-char v15, v3, v15

    if-ne v15, v10, :cond_9

    :cond_4
    add-int/lit8 v15, v4, -0x3

    aget-char v15, v3, v15

    if-eq v15, v13, :cond_5

    add-int/lit8 v15, v4, -0x3

    aget-char v15, v3, v15

    if-ne v15, v12, :cond_9

    :cond_5
    add-int/lit8 v15, v4, -0x2

    aget-char v15, v3, v15

    if-eq v15, v5, :cond_6

    add-int/lit8 v15, v4, -0x2

    aget-char v15, v3, v15

    if-ne v15, v8, :cond_9

    :cond_6
    add-int/lit8 v15, v4, -0x1

    aget-char v15, v3, v15

    if-eq v15, v9, :cond_7

    add-int/lit8 v15, v4, -0x1

    aget-char v15, v3, v15

    if-ne v15, v7, :cond_9

    :cond_7
    aget-char v15, v3, v4

    if-eq v15, v9, :cond_8

    aget-char v15, v3, v4

    if-ne v15, v7, :cond_9

    .line 369
    :cond_8
    const/4 v5, 0x5

    .line 370
    .local v5, "matchlen":I
    or-int/lit8 v2, v2, 0x41

    goto/16 :goto_2

    .line 373
    .end local v5    # "matchlen":I
    :cond_9
    const/16 v15, 0x54

    const/16 v14, 0x74

    const/16 v6, 0x45

    const/16 v8, 0x65

    const/4 v5, 0x6

    if-lt v4, v5, :cond_11

    add-int/lit8 v16, v4, -0x6

    aget-char v5, v3, v16

    if-eq v5, v8, :cond_a

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_11

    :cond_a
    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    const/16 v12, 0x78

    if-eq v5, v12, :cond_b

    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    const/16 v12, 0x58

    if-ne v5, v12, :cond_11

    :cond_b
    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_c

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_11

    :cond_c
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-eq v5, v11, :cond_d

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-ne v5, v10, :cond_11

    :cond_d
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v12, 0x75

    if-eq v5, v12, :cond_e

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v12, 0x55

    if-ne v5, v12, :cond_11

    :cond_e
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-eq v5, v14, :cond_f

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-ne v5, v15, :cond_11

    :cond_f
    aget-char v5, v3, v4

    if-eq v5, v8, :cond_10

    aget-char v5, v3, v4

    if-ne v5, v6, :cond_11

    .line 380
    :cond_10
    const/4 v5, 0x7

    .line 381
    .restart local v5    # "matchlen":I
    or-int/lit8 v2, v2, 0x42

    goto/16 :goto_2

    .line 384
    .end local v5    # "matchlen":I
    :cond_11
    const/16 v5, 0x11

    if-lt v4, v5, :cond_24

    add-int/lit8 v5, v4, -0x11

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_12

    add-int/lit8 v5, v4, -0x11

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_24

    :cond_12
    add-int/lit8 v5, v4, -0x10

    aget-char v5, v3, v5

    const/16 v12, 0x78

    if-eq v5, v12, :cond_13

    add-int/lit8 v5, v4, -0x10

    aget-char v5, v3, v5

    const/16 v12, 0x58

    if-ne v5, v12, :cond_24

    :cond_13
    add-int/lit8 v5, v4, -0xf

    aget-char v5, v3, v5

    if-eq v5, v14, :cond_14

    add-int/lit8 v5, v4, -0xf

    aget-char v5, v3, v5

    if-ne v5, v15, :cond_24

    :cond_14
    add-int/lit8 v5, v4, -0xe

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_15

    add-int/lit8 v5, v4, -0xe

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_24

    :cond_15
    add-int/lit8 v5, v4, -0xd

    aget-char v5, v3, v5

    const/16 v12, 0x6e

    if-eq v5, v12, :cond_16

    add-int/lit8 v5, v4, -0xd

    aget-char v5, v3, v5

    const/16 v12, 0x4e

    if-ne v5, v12, :cond_24

    :cond_16
    add-int/lit8 v5, v4, -0xc

    aget-char v5, v3, v5

    if-eq v5, v9, :cond_17

    add-int/lit8 v5, v4, -0xc

    aget-char v5, v3, v5

    if-ne v5, v7, :cond_24

    :cond_17
    add-int/lit8 v5, v4, -0xb

    aget-char v5, v3, v5

    const/16 v12, 0x69

    if-eq v5, v12, :cond_18

    add-int/lit8 v5, v4, -0xb

    aget-char v5, v3, v5

    const/16 v12, 0x49

    if-ne v5, v12, :cond_24

    :cond_18
    add-int/lit8 v5, v4, -0xa

    aget-char v5, v3, v5

    const/16 v12, 0x6f

    if-eq v5, v12, :cond_19

    add-int/lit8 v5, v4, -0xa

    aget-char v5, v3, v5

    const/16 v12, 0x4f

    if-ne v5, v12, :cond_24

    :cond_19
    add-int/lit8 v5, v4, -0x9

    aget-char v5, v3, v5

    const/16 v12, 0x6e

    if-eq v5, v12, :cond_1a

    add-int/lit8 v5, v4, -0x9

    aget-char v5, v3, v5

    const/16 v12, 0x4e

    if-ne v5, v12, :cond_24

    :cond_1a
    add-int/lit8 v5, v4, -0x8

    aget-char v5, v3, v5

    if-eq v5, v13, :cond_1b

    add-int/lit8 v5, v4, -0x8

    aget-char v5, v3, v5

    const/16 v12, 0x4c

    if-ne v5, v12, :cond_24

    :cond_1b
    add-int/lit8 v5, v4, -0x7

    aget-char v5, v3, v5

    const/16 v12, 0x69

    if-eq v5, v12, :cond_1c

    add-int/lit8 v5, v4, -0x7

    aget-char v5, v3, v5

    const/16 v12, 0x49

    if-ne v5, v12, :cond_24

    :cond_1c
    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v12, 0x66

    if-eq v5, v12, :cond_1d

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v12, 0x46

    if-ne v5, v12, :cond_24

    :cond_1d
    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_1e

    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_24

    :cond_1e
    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-eq v5, v11, :cond_1f

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-ne v5, v10, :cond_24

    :cond_1f
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    const/16 v12, 0x79

    if-eq v5, v12, :cond_20

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    const/16 v12, 0x59

    if-ne v5, v12, :cond_24

    :cond_20
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-eq v5, v11, :cond_21

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-ne v5, v10, :cond_24

    :cond_21
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-eq v5, v13, :cond_22

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v12, 0x4c

    if-ne v5, v12, :cond_24

    :cond_22
    aget-char v5, v3, v4

    if-eq v5, v8, :cond_23

    aget-char v5, v3, v4

    if-ne v5, v6, :cond_24

    .line 402
    :cond_23
    const/16 v5, 0x12

    .line 403
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0x200

    goto/16 :goto_2

    .line 406
    .end local v5    # "matchlen":I
    :cond_24
    const/16 v5, 0x8

    if-lt v4, v5, :cond_2e

    add-int/lit8 v5, v4, -0x8

    aget-char v5, v3, v5

    if-eq v5, v13, :cond_25

    add-int/lit8 v5, v4, -0x8

    aget-char v5, v3, v5

    const/16 v12, 0x4c

    if-ne v5, v12, :cond_2e

    :cond_25
    add-int/lit8 v5, v4, -0x7

    aget-char v5, v3, v5

    const/16 v12, 0x69

    if-eq v5, v12, :cond_26

    add-int/lit8 v5, v4, -0x7

    aget-char v5, v3, v5

    const/16 v12, 0x49

    if-ne v5, v12, :cond_2e

    :cond_26
    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v12, 0x66

    if-eq v5, v12, :cond_27

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v12, 0x46

    if-ne v5, v12, :cond_2e

    :cond_27
    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_28

    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_2e

    :cond_28
    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-eq v5, v11, :cond_29

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-ne v5, v10, :cond_2e

    :cond_29
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    const/16 v12, 0x79

    if-eq v5, v12, :cond_2a

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    const/16 v12, 0x59

    if-ne v5, v12, :cond_2e

    :cond_2a
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-eq v5, v11, :cond_2b

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-ne v5, v10, :cond_2e

    :cond_2b
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-eq v5, v13, :cond_2c

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v12, 0x4c

    if-ne v5, v12, :cond_2e

    :cond_2c
    aget-char v5, v3, v4

    if-eq v5, v8, :cond_2d

    aget-char v5, v3, v4

    if-ne v5, v6, :cond_2e

    .line 415
    :cond_2d
    const/16 v5, 0x9

    .line 416
    .restart local v5    # "matchlen":I
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_2

    .line 419
    .end local v5    # "matchlen":I
    :cond_2e
    const/16 v5, 0x72

    const/4 v12, 0x7

    if-lt v4, v12, :cond_37

    add-int/lit8 v17, v4, -0x7

    aget-char v10, v3, v17

    if-eq v10, v13, :cond_2f

    add-int/lit8 v10, v4, -0x7

    aget-char v10, v3, v10

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_37

    :cond_2f
    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    const/16 v11, 0x69

    if-eq v10, v11, :cond_30

    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_37

    :cond_30
    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-eq v10, v9, :cond_31

    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-ne v10, v7, :cond_37

    :cond_31
    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    if-eq v10, v14, :cond_32

    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    if-ne v10, v15, :cond_37

    :cond_32
    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    if-eq v10, v8, :cond_33

    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    if-ne v10, v6, :cond_37

    :cond_33
    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x6e

    if-eq v10, v11, :cond_34

    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x4e

    if-ne v10, v11, :cond_37

    :cond_34
    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    if-eq v10, v8, :cond_35

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    if-ne v10, v6, :cond_37

    :cond_35
    aget-char v10, v3, v4

    if-eq v10, v5, :cond_36

    aget-char v10, v3, v4

    const/16 v11, 0x52

    if-ne v10, v11, :cond_37

    .line 427
    :cond_36
    const/16 v5, 0x8

    .line 428
    .restart local v5    # "matchlen":I
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_2

    .line 431
    .end local v5    # "matchlen":I
    :cond_37
    if-lt v4, v12, :cond_40

    add-int/lit8 v10, v4, -0x7

    aget-char v10, v3, v10

    const/16 v11, 0x6d

    if-eq v10, v11, :cond_38

    add-int/lit8 v10, v4, -0x7

    aget-char v10, v3, v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_40

    :cond_38
    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    if-eq v10, v8, :cond_39

    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    if-ne v10, v6, :cond_40

    :cond_39
    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-eq v10, v14, :cond_3a

    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-ne v10, v15, :cond_40

    :cond_3a
    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    const/16 v11, 0x61

    if-eq v10, v11, :cond_3b

    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    const/16 v11, 0x41

    if-ne v10, v11, :cond_40

    :cond_3b
    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x64

    if-eq v10, v11, :cond_3c

    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x44

    if-ne v10, v11, :cond_40

    :cond_3c
    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x61

    if-eq v10, v11, :cond_3d

    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x41

    if-ne v10, v11, :cond_40

    :cond_3d
    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    if-eq v10, v14, :cond_3e

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    if-ne v10, v15, :cond_40

    :cond_3e
    aget-char v10, v3, v4

    const/16 v11, 0x61

    if-eq v10, v11, :cond_3f

    aget-char v10, v3, v4

    const/16 v11, 0x41

    if-ne v10, v11, :cond_40

    .line 440
    :cond_3f
    const/16 v5, 0x8

    .line 441
    .restart local v5    # "matchlen":I
    or-int/lit8 v2, v2, 0x10

    goto/16 :goto_2

    .line 444
    .end local v5    # "matchlen":I
    :cond_40
    const/4 v10, 0x6

    if-lt v4, v10, :cond_48

    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    if-eq v10, v5, :cond_41

    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    const/16 v11, 0x52

    if-ne v10, v11, :cond_48

    :cond_41
    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-eq v10, v8, :cond_42

    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-ne v10, v6, :cond_48

    :cond_42
    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    if-eq v10, v9, :cond_43

    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    if-ne v10, v7, :cond_48

    :cond_43
    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x6f

    if-eq v10, v11, :cond_44

    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x4f

    if-ne v10, v11, :cond_48

    :cond_44
    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    if-eq v10, v13, :cond_45

    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_48

    :cond_45
    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    const/16 v11, 0x76

    if-eq v10, v11, :cond_46

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_48

    :cond_46
    aget-char v10, v3, v4

    if-eq v10, v8, :cond_47

    aget-char v10, v3, v4

    if-ne v10, v6, :cond_48

    .line 452
    :cond_47
    const/4 v5, 0x7

    .line 453
    .restart local v5    # "matchlen":I
    or-int/lit8 v2, v2, 0x40

    goto/16 :goto_2

    .line 456
    .end local v5    # "matchlen":I
    :cond_48
    if-lt v4, v12, :cond_51

    add-int/lit8 v10, v4, -0x7

    aget-char v10, v3, v10

    if-eq v10, v5, :cond_49

    add-int/lit8 v10, v4, -0x7

    aget-char v10, v3, v10

    const/16 v11, 0x52

    if-ne v10, v11, :cond_51

    :cond_49
    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    if-eq v10, v8, :cond_4a

    add-int/lit8 v10, v4, -0x6

    aget-char v10, v3, v10

    if-ne v10, v6, :cond_51

    :cond_4a
    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-eq v10, v9, :cond_4b

    add-int/lit8 v10, v4, -0x5

    aget-char v10, v3, v10

    if-ne v10, v7, :cond_51

    :cond_4b
    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    const/16 v11, 0x6f

    if-eq v10, v11, :cond_4c

    add-int/lit8 v10, v4, -0x4

    aget-char v10, v3, v10

    const/16 v11, 0x4f

    if-ne v10, v11, :cond_51

    :cond_4c
    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x75

    if-eq v10, v11, :cond_4d

    add-int/lit8 v10, v4, -0x3

    aget-char v10, v3, v10

    const/16 v11, 0x55

    if-ne v10, v11, :cond_51

    :cond_4d
    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    if-eq v10, v5, :cond_4e

    add-int/lit8 v10, v4, -0x2

    aget-char v10, v3, v10

    const/16 v11, 0x52

    if-ne v10, v11, :cond_51

    :cond_4e
    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    const/16 v11, 0x63

    if-eq v10, v11, :cond_4f

    add-int/lit8 v10, v4, -0x1

    aget-char v10, v3, v10

    const/16 v11, 0x43

    if-ne v10, v11, :cond_51

    :cond_4f
    aget-char v10, v3, v4

    if-eq v10, v8, :cond_50

    aget-char v10, v3, v4

    if-ne v10, v6, :cond_51

    .line 465
    :cond_50
    const/16 v5, 0x8

    .line 466
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0xc0

    goto/16 :goto_2

    .line 470
    .end local v5    # "matchlen":I
    :cond_51
    const/16 v10, 0x9

    if-lt v4, v10, :cond_5c

    add-int/lit8 v10, v4, -0x9

    aget-char v10, v3, v10

    if-eq v10, v9, :cond_52

    add-int/lit8 v9, v4, -0x9

    aget-char v9, v3, v9

    if-ne v9, v7, :cond_5c

    :cond_52
    add-int/lit8 v7, v4, -0x8

    aget-char v7, v3, v7

    if-eq v7, v14, :cond_53

    add-int/lit8 v7, v4, -0x8

    aget-char v7, v3, v7

    if-ne v7, v15, :cond_5c

    :cond_53
    add-int/lit8 v7, v4, -0x7

    aget-char v7, v3, v7

    const/16 v9, 0x61

    if-eq v7, v9, :cond_54

    add-int/lit8 v7, v4, -0x7

    aget-char v7, v3, v7

    const/16 v9, 0x41

    if-ne v7, v9, :cond_5c

    :cond_54
    add-int/lit8 v7, v4, -0x6

    aget-char v7, v3, v7

    if-eq v7, v5, :cond_55

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v7, 0x52

    if-ne v5, v7, :cond_5c

    :cond_55
    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-eq v5, v14, :cond_56

    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    if-ne v5, v15, :cond_5c

    :cond_56
    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    if-eq v5, v13, :cond_57

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5c

    :cond_57
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_58

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_5c

    :cond_58
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v7, 0x76

    if-eq v5, v7, :cond_59

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v7, 0x56

    if-ne v5, v7, :cond_5c

    :cond_59
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_5a

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_5c

    :cond_5a
    aget-char v5, v3, v4

    if-eq v5, v13, :cond_5b

    aget-char v5, v3, v4

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5c

    .line 481
    :cond_5b
    const/16 v5, 0xa

    .line 482
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0x100

    goto/16 :goto_2

    .line 485
    .end local v5    # "matchlen":I
    :cond_5c
    const/4 v5, 0x6

    if-lt v4, v5, :cond_64

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v7, 0x63

    if-eq v5, v7, :cond_5d

    add-int/lit8 v5, v4, -0x6

    aget-char v5, v3, v5

    const/16 v7, 0x43

    if-ne v5, v7, :cond_64

    :cond_5d
    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    const/16 v7, 0x6f

    if-eq v5, v7, :cond_5e

    add-int/lit8 v5, v4, -0x5

    aget-char v5, v3, v5

    const/16 v7, 0x4f

    if-ne v5, v7, :cond_64

    :cond_5e
    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    const/16 v7, 0x6e

    if-eq v5, v7, :cond_5f

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    const/16 v7, 0x4e

    if-ne v5, v7, :cond_64

    :cond_5f
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-eq v5, v14, :cond_60

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-ne v5, v15, :cond_64

    :cond_60
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_61

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_64

    :cond_61
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v7, 0x78

    if-eq v5, v7, :cond_62

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v7, 0x58

    if-ne v5, v7, :cond_64

    :cond_62
    aget-char v5, v3, v4

    if-eq v5, v14, :cond_63

    aget-char v5, v3, v4

    if-ne v5, v15, :cond_64

    .line 493
    :cond_63
    const/4 v5, 0x7

    .line 494
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0x400

    goto :goto_2

    .line 497
    .end local v5    # "matchlen":I
    :cond_64
    const/4 v5, 0x4

    if-lt v4, v5, :cond_6a

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    const/16 v7, 0x77

    if-eq v5, v7, :cond_65

    add-int/lit8 v5, v4, -0x4

    aget-char v5, v3, v5

    const/16 v7, 0x57

    if-ne v5, v7, :cond_6a

    :cond_65
    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-eq v5, v8, :cond_66

    add-int/lit8 v5, v4, -0x3

    aget-char v5, v3, v5

    if-ne v5, v6, :cond_6a

    :cond_66
    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v7, 0x61

    if-eq v5, v7, :cond_67

    add-int/lit8 v5, v4, -0x2

    aget-char v5, v3, v5

    const/16 v7, 0x41

    if-ne v5, v7, :cond_6a

    :cond_67
    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v7, 0x76

    if-eq v5, v7, :cond_68

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v3, v5

    const/16 v7, 0x56

    if-ne v5, v7, :cond_6a

    :cond_68
    aget-char v5, v3, v4

    if-eq v5, v8, :cond_69

    aget-char v5, v3, v4

    if-ne v5, v6, :cond_6a

    .line 503
    :cond_69
    const/4 v5, 0x5

    .line 504
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0x800

    goto :goto_2

    .line 507
    .end local v5    # "matchlen":I
    :cond_6a
    if-ltz v4, :cond_6c

    aget-char v5, v3, v4

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_6c

    .line 508
    const/4 v5, 0x1

    .line 509
    .restart local v5    # "matchlen":I
    or-int/lit16 v2, v2, 0xfdf

    .line 518
    :goto_2
    const/4 v1, 0x0

    .line 519
    :goto_3
    if-lt v4, v5, :cond_6b

    if-nez v1, :cond_6b

    .line 520
    sub-int v6, v4, v5

    aget-char v6, v3, v6

    sparse-switch v6, :sswitch_data_0

    .line 531
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid permission: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 522
    :sswitch_0
    const/4 v1, 0x1

    .line 529
    :sswitch_1
    nop

    .line 533
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 537
    :cond_6b
    sub-int/2addr v4, v5

    .line 538
    .end local v5    # "matchlen":I
    goto/16 :goto_0

    .line 513
    :cond_6c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 540
    :cond_6d
    if-nez v1, :cond_6e

    .line 544
    return v2

    .line 541
    :cond_6e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 341
    .end local v1    # "seencomma":Z
    .end local v2    # "mask":I
    .end local v3    # "a":[C
    .end local v4    # "i":I
    :cond_6f
    :goto_4
    const/16 v1, 0xfdf

    return v1

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

    .line 557
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 558
    return-object v0

    .line 560
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 561
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    return-object v0

    .line 566
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid filter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 570
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

    .line 813
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 814
    invoke-virtual {p0}, Lorg/osgi/framework/AdminPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/osgi/framework/AdminPermission;->parseFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v0

    iget-object v1, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/AdminPermission;->parseActions(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/osgi/framework/AdminPermission;->setTransients(Lorg/osgi/framework/Filter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    monitor-exit p0

    return-void

    .line 812
    .end local p0    # "this":Lorg/osgi/framework/AdminPermission;
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

    .line 326
    iput-object p1, p0, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    .line 327
    if-eqz p2, :cond_0

    and-int/lit16 v0, p2, 0xfdf

    if-ne v0, p2, :cond_0

    .line 330
    iput p2, p0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 331
    return-void

    .line 328
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

    .line 797
    :try_start_0
    iget-object v0, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lorg/osgi/framework/AdminPermission;->getActions()Ljava/lang/String;

    .line 804
    .end local p0    # "this":Lorg/osgi/framework/AdminPermission;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    monitor-exit p0

    return-void

    .line 798
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "cannot serialize"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
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

    .line 763
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 764
    return v0

    .line 767
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/AdminPermission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 768
    return v2

    .line 771
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/AdminPermission;

    .line 773
    .local v1, "ap":Lorg/osgi/framework/AdminPermission;
    iget v3, p0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    iget v4, v1, Lorg/osgi/framework/AdminPermission;->action_mask:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    iget-object v4, v1, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    if-nez v3, :cond_3

    iget-object v3, v1, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public getActions()Ljava/lang/String;
    .locals 7

    .line 673
    iget-object v0, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    .line 674
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 675
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 677
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget v2, p0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 678
    .local v2, "mask":I
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x2c

    if-ne v3, v4, :cond_0

    .line 679
    const-string v3, "class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 683
    :cond_0
    and-int/lit8 v3, v2, 0x2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 684
    const-string v3, "execute"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 688
    :cond_1
    and-int/lit16 v3, v2, 0x200

    const/16 v6, 0x200

    if-ne v3, v6, :cond_2

    .line 689
    const-string v3, "extensionLifecycle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 693
    :cond_2
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 694
    const-string v3, "lifecycle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 698
    :cond_3
    and-int/lit8 v3, v2, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 699
    const-string v3, "listener"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 703
    :cond_4
    and-int/lit8 v3, v2, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_5

    .line 704
    const-string v3, "metadata"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 708
    :cond_5
    and-int/lit8 v3, v2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_6

    .line 709
    const-string v3, "resolve"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 713
    :cond_6
    and-int/lit16 v3, v2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_7

    .line 714
    const-string v3, "resource"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 718
    :cond_7
    and-int/lit16 v3, v2, 0x100

    const/16 v6, 0x100

    if-ne v3, v6, :cond_8

    .line 719
    const-string v3, "startlevel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 723
    :cond_8
    and-int/lit16 v3, v2, 0x400

    const/16 v6, 0x400

    if-ne v3, v6, :cond_9

    .line 724
    const-string v3, "context"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 728
    :cond_9
    and-int/lit16 v3, v2, 0x800

    const/16 v6, 0x800

    if-ne v3, v6, :cond_a

    .line 729
    const-string v3, "weave"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 734
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 735
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 738
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    iput-object v3, p0, Lorg/osgi/framework/AdminPermission;->actions:Ljava/lang/String;

    .line 740
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "mask":I
    :cond_c
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 783
    invoke-virtual {p0}, Lorg/osgi/framework/AdminPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 784
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/osgi/framework/AdminPermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 785
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v0, :cond_0

    .line 786
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 788
    :cond_0
    return v1
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 602
    instance-of v0, p1, Lorg/osgi/framework/AdminPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 603
    return v1

    .line 605
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdminPermission;

    .line 606
    .local v0, "requested":Lorg/osgi/framework/AdminPermission;
    iget-object v2, p0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-eqz v2, :cond_1

    .line 607
    return v1

    .line 610
    :cond_1
    iget-object v2, v0, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_2

    .line 611
    return v1

    .line 613
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/osgi/framework/AdminPermission;->implies0(Lorg/osgi/framework/AdminPermission;I)Z

    move-result v1

    return v1
.end method

.method implies0(Lorg/osgi/framework/AdminPermission;I)Z
    .locals 5
    .param p1, "requested"    # Lorg/osgi/framework/AdminPermission;
    .param p2, "effective"    # I

    .line 629
    iget v0, p0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    or-int/2addr p2, v0

    .line 630
    iget v0, p1, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 631
    .local v0, "desired":I
    and-int v1, p2, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 632
    return v2

    .line 636
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    .line 637
    .local v1, "f":Lorg/osgi/framework/Filter;
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 639
    return v3

    .line 642
    :cond_1
    iget-object v4, p1, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v4, :cond_2

    .line 643
    return v2

    .line 645
    :cond_2
    invoke-direct {p1}, Lorg/osgi/framework/AdminPermission;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 646
    .local v2, "requestedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 653
    return v3

    .line 655
    :cond_3
    invoke-interface {v1, v2}, Lorg/osgi/framework/Filter;->matches(Ljava/util/Map;)Z

    move-result v3

    return v3
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    .line 751
    new-instance v0, Lorg/osgi/framework/AdminPermissionCollection;

    invoke-direct {v0}, Lorg/osgi/framework/AdminPermissionCollection;-><init>()V

    return-object v0
.end method
