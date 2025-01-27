.class public interface abstract Lcom/sleepycat/je/dbi/EnvironmentImpl$MBeanRegistrar;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MBeanRegistrar"
.end annotation


# virtual methods
.method public abstract doRegister(Lcom/sleepycat/je/Environment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract doUnregister()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
