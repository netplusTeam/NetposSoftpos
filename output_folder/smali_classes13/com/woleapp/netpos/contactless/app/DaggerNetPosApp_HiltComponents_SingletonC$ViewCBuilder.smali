.class final Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;
.super Ljava/lang/Object;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 313
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 314
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "x1"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "x2"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "x3"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewC;
    .locals 8

    .line 325
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 326
    new-instance v0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCImpl;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v6, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCImpl;-><init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ViewComponent;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->build()Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewC;

    move-result-object v0

    return-object v0
.end method

.method public view(Landroid/view/View;)Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    .line 320
    return-object p0
.end method

.method public bridge synthetic view(Landroid/view/View;)Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;->view(Landroid/view/View;)Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$ViewCBuilder;

    move-result-object p1

    return-object p1
.end method
