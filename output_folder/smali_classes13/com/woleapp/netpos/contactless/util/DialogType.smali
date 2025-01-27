.class public final enum Lcom/woleapp/netpos/contactless/util/DialogType;
.super Ljava/lang/Enum;
.source "AppUtils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woleapp/netpos/contactless/util/DialogType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/DialogType;",
        "",
        "title",
        "",
        "icon",
        "",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getIcon",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "SUCCESS",
        "FAILURE",
        "CONFIRMATION",
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
.field private static final synthetic $VALUES:[Lcom/woleapp/netpos/contactless/util/DialogType;

.field public static final enum CONFIRMATION:Lcom/woleapp/netpos/contactless/util/DialogType;

.field public static final enum FAILURE:Lcom/woleapp/netpos/contactless/util/DialogType;

.field public static final enum SUCCESS:Lcom/woleapp/netpos/contactless/util/DialogType;


# instance fields
.field private final icon:I

.field private final title:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/woleapp/netpos/contactless/util/DialogType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/woleapp/netpos/contactless/util/DialogType;

    sget-object v1, Lcom/woleapp/netpos/contactless/util/DialogType;->SUCCESS:Lcom/woleapp/netpos/contactless/util/DialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/util/DialogType;->FAILURE:Lcom/woleapp/netpos/contactless/util/DialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/woleapp/netpos/contactless/util/DialogType;->CONFIRMATION:Lcom/woleapp/netpos/contactless/util/DialogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/woleapp/netpos/contactless/util/DialogType;

    .line 28
    nop

    .line 29
    nop

    .line 27
    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "Success"

    const v4, 0x7f080108

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/woleapp/netpos/contactless/util/DialogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/DialogType;->SUCCESS:Lcom/woleapp/netpos/contactless/util/DialogType;

    .line 31
    new-instance v0, Lcom/woleapp/netpos/contactless/util/DialogType;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    const-string v3, "Failure"

    const v4, 0x7f0800db

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/woleapp/netpos/contactless/util/DialogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/DialogType;->FAILURE:Lcom/woleapp/netpos/contactless/util/DialogType;

    .line 32
    new-instance v0, Lcom/woleapp/netpos/contactless/util/DialogType;

    const-string v1, "CONFIRMATION"

    const/4 v2, 0x2

    const-string v3, "Confirm"

    const v4, 0x7f08010d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/woleapp/netpos/contactless/util/DialogType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/DialogType;->CONFIRMATION:Lcom/woleapp/netpos/contactless/util/DialogType;

    invoke-static {}, Lcom/woleapp/netpos/contactless/util/DialogType;->$values()[Lcom/woleapp/netpos/contactless/util/DialogType;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/util/DialogType;->$VALUES:[Lcom/woleapp/netpos/contactless/util/DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/util/DialogType;->title:Ljava/lang/String;

    iput p4, p0, Lcom/woleapp/netpos/contactless/util/DialogType;->icon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/util/DialogType;
    .locals 1

    const-class v0, Lcom/woleapp/netpos/contactless/util/DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/util/DialogType;

    return-object v0
.end method

.method public static values()[Lcom/woleapp/netpos/contactless/util/DialogType;
    .locals 1

    sget-object v0, Lcom/woleapp/netpos/contactless/util/DialogType;->$VALUES:[Lcom/woleapp/netpos/contactless/util/DialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woleapp/netpos/contactless/util/DialogType;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/woleapp/netpos/contactless/util/DialogType;->icon:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/DialogType;->title:Ljava/lang/String;

    return-object v0
.end method
