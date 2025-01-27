.class final enum Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;
.super Ljava/lang/Enum;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser$TestEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum CANNOT_RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum COMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum INCOMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum INIT:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum PERIOD_CHANGED:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum START:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

.field public static final enum SUSPEND:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2225
    new-instance v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->INIT:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2226
    new-instance v1, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->START:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2227
    new-instance v3, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v5, "COMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->COMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2228
    new-instance v5, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v7, "INCOMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->INCOMPLETE:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2229
    new-instance v7, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v9, "RESUME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2230
    new-instance v9, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v11, "CANNOT_RESUME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->CANNOT_RESUME:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2231
    new-instance v11, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v13, "SUSPEND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->SUSPEND:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2232
    new-instance v13, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    const-string v15, "PERIOD_CHANGED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->PERIOD_CHANGED:Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    .line 2224
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->$VALUES:[Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2224
    const-class v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;
    .locals 1

    .line 2224
    sget-object v0, Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->$VALUES:[Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    invoke-virtual {v0}, [Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/cleaner/DataEraser$TestEvent$Type;

    return-object v0
.end method
