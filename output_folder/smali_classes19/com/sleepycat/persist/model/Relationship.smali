.class public final enum Lcom/sleepycat/persist/model/Relationship;
.super Ljava/lang/Enum;
.source "Relationship.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/persist/model/Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/persist/model/Relationship;

.field public static final enum MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

.field public static final enum MANY_TO_ONE:Lcom/sleepycat/persist/model/Relationship;

.field public static final enum ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

.field public static final enum ONE_TO_ONE:Lcom/sleepycat/persist/model/Relationship;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 34
    new-instance v0, Lcom/sleepycat/persist/model/Relationship;

    const-string v1, "MANY_TO_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/persist/model/Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_ONE:Lcom/sleepycat/persist/model/Relationship;

    .line 44
    new-instance v1, Lcom/sleepycat/persist/model/Relationship;

    const-string v3, "ONE_TO_MANY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/persist/model/Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    .line 54
    new-instance v3, Lcom/sleepycat/persist/model/Relationship;

    const-string v5, "MANY_TO_MANY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/persist/model/Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    .line 65
    new-instance v5, Lcom/sleepycat/persist/model/Relationship;

    const-string v7, "ONE_TO_ONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/persist/model/Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_ONE:Lcom/sleepycat/persist/model/Relationship;

    .line 23
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/persist/model/Relationship;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/persist/model/Relationship;->$VALUES:[Lcom/sleepycat/persist/model/Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/persist/model/Relationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/sleepycat/persist/model/Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/Relationship;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/persist/model/Relationship;
    .locals 1

    .line 23
    sget-object v0, Lcom/sleepycat/persist/model/Relationship;->$VALUES:[Lcom/sleepycat/persist/model/Relationship;

    invoke-virtual {v0}, [Lcom/sleepycat/persist/model/Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/persist/model/Relationship;

    return-object v0
.end method
