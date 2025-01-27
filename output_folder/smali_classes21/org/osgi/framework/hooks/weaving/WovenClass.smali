.class public interface abstract Lorg/osgi/framework/hooks/weaving/WovenClass;
.super Ljava/lang/Object;
.source "WovenClass.java"


# static fields
.field public static final DEFINED:I = 0x4

.field public static final DEFINE_FAILED:I = 0x10

.field public static final TRANSFORMED:I = 0x2

.field public static final TRANSFORMING:I = 0x1

.field public static final TRANSFORMING_FAILED:I = 0x8


# virtual methods
.method public abstract getBundleWiring()Lorg/osgi/framework/wiring/BundleWiring;
.end method

.method public abstract getBytes()[B
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getDefinedClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getDynamicImports()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProtectionDomain()Ljava/security/ProtectionDomain;
.end method

.method public abstract getState()I
.end method

.method public abstract isWeavingComplete()Z
.end method

.method public abstract setBytes([B)V
.end method
