.class interface abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewWithFragmentCBuilderModule;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewWithFragmentC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewWithFragmentCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ViewWithFragmentC$Builder;)Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method
