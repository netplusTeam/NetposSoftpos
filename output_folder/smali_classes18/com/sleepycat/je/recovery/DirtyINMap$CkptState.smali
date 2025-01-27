.class final enum Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
.super Ljava/lang/Enum;
.source "DirtyINMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/DirtyINMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CkptState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

.field public static final enum DIRTY_MAP_COMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

.field public static final enum DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

.field public static final enum NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 77
    new-instance v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->NONE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 79
    new-instance v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    const-string v3, "DIRTY_MAP_INCOMPLETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_INCOMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 81
    new-instance v3, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    const-string v5, "DIRTY_MAP_COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->DIRTY_MAP_COMPLETE:Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    .line 75
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->$VALUES:[Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;
    .locals 1

    .line 75
    sget-object v0, Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->$VALUES:[Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    invoke-virtual {v0}, [Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/recovery/DirtyINMap$CkptState;

    return-object v0
.end method
