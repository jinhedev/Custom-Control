import UIKit

final class DeluxeButton: UIView {

    fileprivate let imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()

    fileprivate let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.heavy)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()

    fileprivate lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [self.imageView, self.label])
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private func initPhase2() {
        layer.cornerRadius = 20
        layer.borderWidth = 10



        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: layoutMarginsGuide.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: layoutMarginsGuide.rightAnchor),
            label.heightAnchor.constraint(
                equalTo: heightAnchor,
                multiplier: 0.3
            )
            ])

    }

}
