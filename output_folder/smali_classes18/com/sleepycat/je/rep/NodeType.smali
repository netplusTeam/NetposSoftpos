.class public enum Lcom/sleepycat/je/rep/NodeType;
.super Ljava/lang/Enum;
.source "NodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/NodeType;

.field public static final enum ARBITER:Lcom/sleepycat/je/rep/NodeType;

.field public static final enum ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

.field public static final enum EXTERNAL:Lcom/sleepycat/je/rep/NodeType;

.field public static final enum MONITOR:Lcom/sleepycat/je/rep/NodeType;

.field public static final enum SECONDARY:Lcom/sleepycat/je/rep/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lcom/sleepycat/je/rep/NodeType$1;

    const-string v1, "MONITOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/NodeType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/NodeType;->MONITOR:Lcom/sleepycat/je/rep/NodeType;

    .line 37
    new-instance v1, Lcom/sleepycat/je/rep/NodeType$2;

    const-string v3, "ELECTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/NodeType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/NodeType;->ELECTABLE:Lcom/sleepycat/je/rep/NodeType;

    .line 64
    new-instance v3, Lcom/sleepycat/je/rep/NodeType$3;

    const-string v5, "SECONDARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/NodeType$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/NodeType;->SECONDARY:Lcom/sleepycat/je/rep/NodeType;

    .line 79
    new-instance v5, Lcom/sleepycat/je/rep/NodeType$4;

    const-string v7, "ARBITER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/NodeType$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/NodeType;->ARBITER:Lcom/sleepycat/je/rep/NodeType;

    .line 100
    new-instance v7, Lcom/sleepycat/je/rep/NodeType$5;

    const-string v9, "EXTERNAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/NodeType$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/NodeType;->EXTERNAL:Lcom/sleepycat/je/rep/NodeType;

    .line 18
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/rep/NodeType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/rep/NodeType;->$VALUES:[Lcom/sleepycat/je/rep/NodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/rep/NodeType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sleepycat/je/rep/NodeType$1;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/NodeType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/NodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/sleepycat/je/rep/NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 18
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->$VALUES:[Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method


# virtual methods
.method public hasTransientId()Z
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public isArbiter()Z
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isDataNode()Z
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isElectable()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isMonitor()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isSecondary()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method
