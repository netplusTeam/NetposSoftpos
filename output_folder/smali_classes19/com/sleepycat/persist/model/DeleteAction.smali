.class public final enum Lcom/sleepycat/persist/model/DeleteAction;
.super Ljava/lang/Enum;
.source "DeleteAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/persist/model/DeleteAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/persist/model/DeleteAction;

.field public static final enum ABORT:Lcom/sleepycat/persist/model/DeleteAction;

.field public static final enum CASCADE:Lcom/sleepycat/persist/model/DeleteAction;

.field public static final enum NULLIFY:Lcom/sleepycat/persist/model/DeleteAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/sleepycat/persist/model/DeleteAction;

    const-string v1, "ABORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/persist/model/DeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/persist/model/DeleteAction;->ABORT:Lcom/sleepycat/persist/model/DeleteAction;

    .line 42
    new-instance v1, Lcom/sleepycat/persist/model/DeleteAction;

    const-string v3, "CASCADE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/persist/model/DeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/persist/model/DeleteAction;->CASCADE:Lcom/sleepycat/persist/model/DeleteAction;

    .line 51
    new-instance v3, Lcom/sleepycat/persist/model/DeleteAction;

    const-string v5, "NULLIFY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/persist/model/DeleteAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/persist/model/DeleteAction;->NULLIFY:Lcom/sleepycat/persist/model/DeleteAction;

    .line 25
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/persist/model/DeleteAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/persist/model/DeleteAction;->$VALUES:[Lcom/sleepycat/persist/model/DeleteAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/persist/model/DeleteAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/sleepycat/persist/model/DeleteAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/DeleteAction;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/persist/model/DeleteAction;
    .locals 1

    .line 25
    sget-object v0, Lcom/sleepycat/persist/model/DeleteAction;->$VALUES:[Lcom/sleepycat/persist/model/DeleteAction;

    invoke-virtual {v0}, [Lcom/sleepycat/persist/model/DeleteAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/persist/model/DeleteAction;

    return-object v0
.end method
