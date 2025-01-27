.class final enum Lcom/sleepycat/je/utilint/LogVerifier$State;
.super Ljava/lang/Enum;
.source "LogVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/LogVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/utilint/LogVerifier$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum FILE_HEADER_ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum FIXED_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum INVALID:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field public static final enum VARIABLE_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 57
    new-instance v0, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/utilint/LogVerifier$State;->INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

    new-instance v1, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v3, "FIXED_HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/utilint/LogVerifier$State;->FIXED_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;

    new-instance v3, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v5, "VARIABLE_HEADER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/utilint/LogVerifier$State;->VARIABLE_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;

    new-instance v5, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v7, "ITEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/utilint/LogVerifier$State;->ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    new-instance v7, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v9, "FILE_HEADER_ITEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/utilint/LogVerifier$State;->FILE_HEADER_ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    new-instance v9, Lcom/sleepycat/je/utilint/LogVerifier$State;

    const-string v11, "INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/utilint/LogVerifier$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/utilint/LogVerifier$State;->INVALID:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 56
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/utilint/LogVerifier$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/utilint/LogVerifier$State;->$VALUES:[Lcom/sleepycat/je/utilint/LogVerifier$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LogVerifier$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/sleepycat/je/utilint/LogVerifier$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LogVerifier$State;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/utilint/LogVerifier$State;
    .locals 1

    .line 56
    sget-object v0, Lcom/sleepycat/je/utilint/LogVerifier$State;->$VALUES:[Lcom/sleepycat/je/utilint/LogVerifier$State;

    invoke-virtual {v0}, [Lcom/sleepycat/je/utilint/LogVerifier$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/utilint/LogVerifier$State;

    return-object v0
.end method
