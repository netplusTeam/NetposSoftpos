.class Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity$1;
.super Ljava/lang/Object;
.source "Hilt_AuthenticationActivity.java"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->_initHiltInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity$1;->this$0:Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/activities/Hilt_AuthenticationActivity;->inject()V

    .line 39
    return-void
.end method
