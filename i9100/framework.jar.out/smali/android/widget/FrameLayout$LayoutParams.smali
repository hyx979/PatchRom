.class public Landroid/widget/FrameLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 468
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 469
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 485
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 459
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 460
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 492
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    return-void
.end method
