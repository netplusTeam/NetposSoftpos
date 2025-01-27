.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;
.super Ljava/lang/Object;
.source "TransactionLed.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;",
        "",
        "()V",
        "backgroundColor",
        "",
        "getBackgroundColor",
        "()I",
        "setBackgroundColor",
        "(I)V",
        "Companion",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;

.field private static final MODE1_ON:[I

.field private static final MODE2_ON:[I


# instance fields
.field private backgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;

    .line 9
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->MODE1_ON:[I

    .line 10
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->MODE2_ON:[I

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0xff0100
        -0xff0100
        -0xff0100
    .end array-data

    :array_1
    .array-data 4
        -0xffff01
        -0x100
        -0xff0100
        -0x10000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMODE1_ON$cp()[I
    .locals 1

    .line 5
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->MODE1_ON:[I

    return-object v0
.end method

.method public static final synthetic access$getMODE2_ON$cp()[I
    .locals 1

    .line 5
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->MODE2_ON:[I

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->backgroundColor:I

    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 6
    iput p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->backgroundColor:I

    return-void
.end method
