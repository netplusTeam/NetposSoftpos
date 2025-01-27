.class public abstract Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$SingletonC;
.super Ljava/lang/Object;
.source "NetPosApp_HiltComponents.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/app/NetPosApp_GeneratedInjector;
.implements Ldagger/hilt/android/flags/FragmentGetContextFix$FragmentGetContextFixEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
.implements Ldagger/hilt/components/SingletonComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/woleapp/netpos/contactless/di/appModule/AppModule;,
        Ldagger/hilt/android/internal/modules/ApplicationContextModule;,
        Ldagger/hilt/android/flags/HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ActivityRetainedCBuilderModule;,
        Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$ServiceCBuilderModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingletonC"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
