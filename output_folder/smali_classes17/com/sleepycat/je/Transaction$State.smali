.class public final enum Lcom/sleepycat/je/Transaction$State;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/Transaction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/Transaction$State;

.field public static final enum ABORTED:Lcom/sleepycat/je/Transaction$State;

.field public static final enum COMMITTED:Lcom/sleepycat/je/Transaction$State;

.field public static final enum MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

.field public static final enum OPEN:Lcom/sleepycat/je/Transaction$State;

.field public static final enum POSSIBLY_COMMITTED:Lcom/sleepycat/je/Transaction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 70
    new-instance v0, Lcom/sleepycat/je/Transaction$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/Transaction$State;->OPEN:Lcom/sleepycat/je/Transaction$State;

    .line 99
    new-instance v1, Lcom/sleepycat/je/Transaction$State;

    const-string v3, "POSSIBLY_COMMITTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/Transaction$State;->POSSIBLY_COMMITTED:Lcom/sleepycat/je/Transaction$State;

    .line 111
    new-instance v3, Lcom/sleepycat/je/Transaction$State;

    const-string v5, "COMMITTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/Transaction$State;->COMMITTED:Lcom/sleepycat/je/Transaction$State;

    .line 119
    new-instance v5, Lcom/sleepycat/je/Transaction$State;

    const-string v7, "MUST_ABORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/Transaction$State;->MUST_ABORT:Lcom/sleepycat/je/Transaction$State;

    .line 124
    new-instance v7, Lcom/sleepycat/je/Transaction$State;

    const-string v9, "ABORTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/Transaction$State;->ABORTED:Lcom/sleepycat/je/Transaction$State;

    .line 62
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/Transaction$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/Transaction$State;->$VALUES:[Lcom/sleepycat/je/Transaction$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Transaction$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/sleepycat/je/Transaction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Transaction$State;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/Transaction$State;
    .locals 1

    .line 62
    sget-object v0, Lcom/sleepycat/je/Transaction$State;->$VALUES:[Lcom/sleepycat/je/Transaction$State;

    invoke-virtual {v0}, [Lcom/sleepycat/je/Transaction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/Transaction$State;

    return-object v0
.end method
