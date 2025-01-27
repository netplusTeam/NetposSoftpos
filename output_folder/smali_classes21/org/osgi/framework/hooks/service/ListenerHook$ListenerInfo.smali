.class public interface abstract Lorg/osgi/framework/hooks/service/ListenerHook$ListenerInfo;
.super Ljava/lang/Object;
.source "ListenerHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/hooks/service/ListenerHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListenerInfo"
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getBundleContext()Lorg/osgi/framework/BundleContext;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isRemoved()Z
.end method
