.class public final enum Lio/netty/util/ResourceLeakDetector$Level;
.super Ljava/lang/Enum;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/util/ResourceLeakDetector$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

.field public static final enum SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 66
    new-instance v0, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    .line 71
    new-instance v1, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v3, "SIMPLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    .line 76
    new-instance v3, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v5, "ADVANCED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    .line 81
    new-instance v5, Lio/netty/util/ResourceLeakDetector$Level;

    const-string v7, "PARANOID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/util/ResourceLeakDetector$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    .line 62
    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/util/ResourceLeakDetector$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/util/ResourceLeakDetector$Level;->$VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static parseLevel(Ljava/lang/String;)Lio/netty/util/ResourceLeakDetector$Level;
    .locals 6
    .param p0, "levelStr"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "trimmedLevelStr":Ljava/lang/String;
    invoke-static {}, Lio/netty/util/ResourceLeakDetector$Level;->values()[Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 92
    .local v4, "l":Lio/netty/util/ResourceLeakDetector$Level;
    invoke-virtual {v4}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 91
    .end local v4    # "l":Lio/netty/util/ResourceLeakDetector$Level;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .restart local v4    # "l":Lio/netty/util/ResourceLeakDetector$Level;
    :cond_1
    :goto_1
    return-object v4

    .line 96
    .end local v4    # "l":Lio/netty/util/ResourceLeakDetector$Level;
    :cond_2
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$000()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lio/netty/util/ResourceLeakDetector$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method public static values()[Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    .line 62
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->$VALUES:[Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v0}, [Lio/netty/util/ResourceLeakDetector$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method
