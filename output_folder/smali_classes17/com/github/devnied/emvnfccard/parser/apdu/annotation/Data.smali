.class public interface abstract annotation Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x0
        format = "yyyyMMdd"
        readHexa = false
        tag = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract dateStandard()I
.end method

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract index()I
.end method

.method public abstract readHexa()Z
.end method

.method public abstract size()I
.end method

.method public abstract tag()Ljava/lang/String;
.end method
