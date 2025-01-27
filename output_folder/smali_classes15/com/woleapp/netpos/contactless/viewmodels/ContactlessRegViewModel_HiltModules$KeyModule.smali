.class public final Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel_HiltModules$KeyModule;
.super Ljava/lang/Object;
.source "ContactlessRegViewModel_HiltModules.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyModule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static provide()Ljava/lang/String;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoSet;
    .end annotation

    .line 47
    const-string v0, "com.woleapp.netpos.contactless.viewmodels.ContactlessRegViewModel"

    return-object v0
.end method
