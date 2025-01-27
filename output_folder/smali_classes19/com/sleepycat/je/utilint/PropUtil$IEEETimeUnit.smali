.class abstract enum Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
.super Ljava/lang/Enum;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/PropUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "IEEETimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum H:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum MIN:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum MS:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum NS:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum S:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field public static final enum US:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

.field private static final nanosUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 177
    new-instance v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$1;

    const-string v1, "NS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->NS:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 184
    new-instance v1, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$2;

    const-string v3, "US"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->US:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 191
    new-instance v3, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$3;

    const-string v5, "MS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->MS:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 198
    new-instance v5, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$4;

    const-string v7, "S"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->S:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 205
    new-instance v7, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$5;

    const-string v9, "MIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->MIN:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 212
    new-instance v9, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$6;

    const-string v11, "H"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->H:Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 174
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->$VALUES:[Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    .line 218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->nanosUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/utilint/PropUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sleepycat/je/utilint/PropUtil$1;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 174
    sget-object v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->nanosUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 174
    const-class v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;
    .locals 1

    .line 174
    sget-object v0, Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->$VALUES:[Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    invoke-virtual {v0}, [Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/utilint/PropUtil$IEEETimeUnit;

    return-object v0
.end method


# virtual methods
.method abstract toNanos(J)J
.end method
