.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;
.super Ljava/lang/Object;
.source "NipNotificationListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;",
        "",
        "()V",
        "END_OF_DAY",
        "",
        "LAST_TWO",
        "NOTIFICATION_TIME",
        "",
        "NOTIFICATION_TYPE",
        "newInstance",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;",
        "notificationType",
        "timeInMillis",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;IJILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    .locals 0

    .line 34
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;->newInstance(IJ)Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(IJ)Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    .locals 7
    .param p1, "notificationType"    # I
    .param p2, "timeInMillis"    # J

    .line 35
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;-><init>()V

    move-object v1, v0

    .local v1, "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-apply-NipNotificationListFragment$Companion$newInstance$1":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 37
    .local v5, "$i$a$-apply-NipNotificationListFragment$Companion$newInstance$1$1":I
    const-string v6, "notification_type"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v6, "notification_time"

    invoke-virtual {v4, v6, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    nop

    .line 36
    .end local v4    # "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-NipNotificationListFragment$Companion$newInstance$1$1":I
    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    nop

    .line 35
    .end local v1    # "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    .end local v2    # "$i$a$-apply-NipNotificationListFragment$Companion$newInstance$1":I
    nop

    .line 40
    return-object v0
.end method
