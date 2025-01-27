.class public final Lcom/danbamitale/epmslib/utils/Constants$MTI;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MTI"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/Constants$MTI;",
        "",
        "()V",
        "AUTHORIZATION_REQUEST_MTI",
        "",
        "AUTHORIZATION_RESPONSE_MTI",
        "NETWORK_MGT_REQUEST_MTI",
        "NETWORK_MGT_REQUEST_RESPONSE_MTI",
        "REVERSAL_ADVICE_MTI",
        "REVERSAL_ADVICE_REPEAT_MTI",
        "REVERSAL_ADVICE_RESPONSE_MTI",
        "TRANSACTION_ADVICE_MTI",
        "TRANSACTION_REQUEST_MTI",
        "TRANSACTION_RESPONSE_MTI",
        "epmslib_release"
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
.field public static final AUTHORIZATION_REQUEST_MTI:Ljava/lang/String; = "0100"

.field public static final AUTHORIZATION_RESPONSE_MTI:Ljava/lang/String; = "0110"

.field public static final INSTANCE:Lcom/danbamitale/epmslib/utils/Constants$MTI;

.field public static final NETWORK_MGT_REQUEST_MTI:Ljava/lang/String; = "0800"

.field public static final NETWORK_MGT_REQUEST_RESPONSE_MTI:Ljava/lang/String; = "0810"

.field public static final REVERSAL_ADVICE_MTI:Ljava/lang/String; = "0420"

.field public static final REVERSAL_ADVICE_REPEAT_MTI:Ljava/lang/String; = "0421"

.field public static final REVERSAL_ADVICE_RESPONSE_MTI:Ljava/lang/String; = "0430"

.field public static final TRANSACTION_ADVICE_MTI:Ljava/lang/String; = "0220"

.field public static final TRANSACTION_REQUEST_MTI:Ljava/lang/String; = "0200"

.field public static final TRANSACTION_RESPONSE_MTI:Ljava/lang/String; = "0210"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/utils/Constants$MTI;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/Constants$MTI;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/utils/Constants$MTI;->INSTANCE:Lcom/danbamitale/epmslib/utils/Constants$MTI;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
