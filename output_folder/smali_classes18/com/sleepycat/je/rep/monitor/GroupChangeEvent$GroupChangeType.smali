.class public final enum Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
.super Ljava/lang/Enum;
.source "GroupChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

.field public static final enum ADD:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

.field public static final enum REMOVE:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->ADD:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 47
    new-instance v1, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    const-string v3, "REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->REMOVE:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 37
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->$VALUES:[Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;
    .locals 1

    .line 37
    sget-object v0, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->$VALUES:[Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    return-object v0
.end method
