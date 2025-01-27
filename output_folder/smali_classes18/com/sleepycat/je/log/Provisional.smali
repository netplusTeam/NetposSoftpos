.class public final enum Lcom/sleepycat/je/log/Provisional;
.super Ljava/lang/Enum;
.source "Provisional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/Provisional;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/Provisional;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum BEFORE_CKPT_END:Lcom/sleepycat/je/log/Provisional;

.field public static final enum NO:Lcom/sleepycat/je/log/Provisional;

.field public static final enum YES:Lcom/sleepycat/je/log/Provisional;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 262
    nop

    .line 267
    new-instance v0, Lcom/sleepycat/je/log/Provisional;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/log/Provisional;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/log/Provisional;->NO:Lcom/sleepycat/je/log/Provisional;

    .line 272
    new-instance v1, Lcom/sleepycat/je/log/Provisional;

    const-string v3, "YES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/log/Provisional;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/log/Provisional;->YES:Lcom/sleepycat/je/log/Provisional;

    .line 279
    new-instance v3, Lcom/sleepycat/je/log/Provisional;

    const-string v5, "BEFORE_CKPT_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/log/Provisional;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/log/Provisional;->BEFORE_CKPT_END:Lcom/sleepycat/je/log/Provisional;

    .line 262
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/log/Provisional;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/log/Provisional;->$VALUES:[Lcom/sleepycat/je/log/Provisional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/Provisional;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 262
    const-class v0, Lcom/sleepycat/je/log/Provisional;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/Provisional;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/Provisional;
    .locals 1

    .line 262
    sget-object v0, Lcom/sleepycat/je/log/Provisional;->$VALUES:[Lcom/sleepycat/je/log/Provisional;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/Provisional;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/Provisional;

    return-object v0
.end method


# virtual methods
.method public isProvisional(JJ)Z
    .locals 5
    .param p1, "logEntryLsn"    # J
    .param p3, "ckptEndLsn"    # J

    .line 286
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 287
    sget-object v2, Lcom/sleepycat/je/log/Provisional$1;->$SwitchMap$com$sleepycat$je$log$Provisional:[I

    invoke-virtual {p0}, Lcom/sleepycat/je/log/Provisional;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 296
    goto :goto_1

    .line 293
    :pswitch_0
    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 293
    :goto_0
    return v3

    .line 291
    :pswitch_1
    return v3

    .line 289
    :pswitch_2
    return v4

    .line 296
    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
